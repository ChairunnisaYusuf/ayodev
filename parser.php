<?php
include('configg.php');
	if (isset($_POST['upload'])) {

	if ($_POST['upload']) {
		$file_name = $_FILES['file']['name'];
		$temp = explode('.', $file_name);
    $file_ext = end($temp);
		$file_size = $_FILES['file']['size'];
		$file_tmp		= $_FILES['file']['tmp_name'];
		if($file_size < 10044070){
						$lokasi = 'files/'.$file_name;
						move_uploaded_file($file_tmp, $lokasi);
						$in = mysqli_query($kon, "INSERT INTO uau VALUES(NULL, '$file_name')");
						if($in)
						{
							echo "<script>alert('Data berhasil di tambahkan!');</script>";
						}else
						{
							echo '<div class="error">ERROR: Gagal upload file!</div>';
						}


             $api_url = 'https://content.dropboxapi.com/2/files/upload'; //dropbox api url
        $token = 'drDq4hs9ZVAAAAAAAAAAMUZmtGKWvwLGq6epn7_FCmQEuT4KM7qfFkSI0Zpa50Dv'; // oauth token

        $headers = array('Authorization: Bearer '. $token,
            'Content-Type: application/octet-stream',
            'Dropbox-API-Arg: '.
            json_encode(
                array(
                    "path"=> '/Homework/Tugas/'. basename($file_name),
                    "mode" => "add",
                    "autorename" => true,
                    "mute" => false
                )
            )

        );

        $ch = curl_init($api_url);

        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_POST, true);

        $lokasi = 'files/'.$file_name.'.'.$file_ext;
        $fp = fopen($lokasi, 'rb');
        $file_size = filesize($lokasi);

        curl_setopt($ch, CURLOPT_POSTFIELDS, fread($fp, $file_size));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//        curl_setopt($ch, CURLOPT_VERBOSE, 1); // debug

        $response = curl_exec($ch);
        $http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        // echo($response.'<br/>');
        // echo($http_code.'<br/>');

        curl_close($ch);
		}
	}
}
header("location: upload.html");

?>