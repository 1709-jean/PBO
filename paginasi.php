<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<div class="container">

     <?php
    class Paginasi
    {
        private $hal;
        private $conn;
        private $sql; //<-- SELECT FROM table
        private $rpp;
        private $max_page;
        private $data;
        private $table_name;
        private $file_caller;

        function __construct(
            $sql,
            $rpp,
            $dbname = "cam_sia",
            $servername = "localhost",
            $username = "root",
            $password = ""
        ) {
            
            $this->table_name = substr(
                substr($sql, strpos(strtolower($sql), "from") + 5),
                0,
                strpos(strtolower(substr($sql, strpos(strtolower($sql), "from") + 5)), " ")
            );
            $key = array_search(__FUNCTION__, array_column(debug_backtrace(), 'function'));
            $this->file_caller = (debug_backtrace()[$key]['file']); //<-- file.php yang memanggil
            $this->file_caller = substr(
                $this->file_caller,
                strripos($this->file_caller, "\\") + 1
            ); //<-- nama filenya saja
            $this->conn = new mysqli($servername, $username, $password, $dbname);
            if ($this->conn->connect_error) {
                die("Koneksi gagal, karena : " . $this->conn->connect_error);
            }
            $this->sql = $sql;
            $this->rpp = $rpp;
            $this->hal = 1;
            $this->IsiData();
        }

        function __destruct()
        {
            $this->conn->close();
        }

        function __get($property)
        {
            return $this->$property;
        }

        function isiData()
        {
            $hasil     = $this->conn->query($this->sql);
            $byk_brs   = $hasil->num_rows;
            $this->max_page = ceil($byk_brs / $this->rpp);

            if ($this->hal < 1)
                $this->hal = 1;
            if ($this->hal > $this->max_page)
                $this->hal = $this->max_page;
            $mulai = ($this->hal - 1) * $this->rpp;

            $sql = $this->sql . " LIMIT " . $mulai . ", " . $this->rpp;
            $hasil = $this->conn->query($sql);

            $this->data = null;
            while ($baris = $hasil->fetch_assoc())
                $this->data[] = $baris;
        }

        function show_sql($hal)
        {
            $this->hal = $hal;
            $this->isiData();
            echo "<form action=\"dml.php\" method=\"post\">";
            echo "<input type=\"hidden\" name=\"file_caller\" value=\"" . $this->file_caller . "\">";
            echo "<input type=\"hidden\" name=\"table_name\" value=\"" . $this->table_name . "\">";
            echo "<div class=\"table-responsive\">";
            echo "<table class=\"table-sm\"><tr class=\"table-dark\">";
            foreach ($this->data[0] as $field => $isi)
                echo "<td>" . ucwords($field) . "</td>";
            echo "<td><input class=\"btn btn-outline-light text-dark\" 
        type=\"submit\" name=\"dml\" value=\"Delete\"></td></tr>\n";
            $i = 0;
            foreach ($this->data as $baris) {
                if ($i++ % 2 == 0)
                    $col = "table-danger";
                else
                    $col = "table-warning";
                echo "<tr class=\"$col\">";
                $field_value = null; //<-- supaya array diganti yang baru
                foreach ($baris as $field => $isi) {
                    $field_name[] = $field;
                    $field_value[] = $isi;
                    echo "<td>" . $isi . "</td>";
                }
                echo "<td align=\"center\"><input type=\"checkbox\" name=" .
                    $field_name[0] . "[] value=\"" . $field_value[0] . "\"></td>";
                echo "</tr>\n";
            }
            $jml_kol = count($this->data[0]) + 1;
            echo "<tr class=\"table-dark\"><td colspan=\"$jml_kol\">";
            echo "<input type=\"hidden\" name=\"field_name\" value=\"" . $field_name[0] . "\">";
            echo "<input class=\"btn btn-primary\" type=\"submit\" name=\"dml\" value=\"Add\">\n";
            echo "<input class=\"btn btn-primary\" type=\"submit\" name=\"dml\" value=\"Edit\">\n";
            echo "</td></tr>";
            echo "</table>";
            echo "</div></form>";
        }

        function set_hal($hal)
        {
            if ($hal >= 0 && $hal <= $this->max_page)
                $this->hal = $hal;
        }
    }
    ?>