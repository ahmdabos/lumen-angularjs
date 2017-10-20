<?php
namespace App\Http\Controllers;
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
class UploadController extends Controller
{
    public function generateRandomString($length = 10)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }
    public function uploadFile(Request $request)
    {
        $data['filePath'] = '../../uploads/';
        $file = $request->file('file');
        $data['filePathWithOldName'] = $data['filePath'] . $file->getClientOriginalName();
        $data['fileExtension'] = $file->getClientOriginalExtension();
        $data['fileNewName'] = $this->generateRandomString(20) . '.' . $file->getClientOriginalExtension();
        $filePathWithOldName = $data['filePath'] . $data['fileNewName'];
        $isImage = getimagesize($_FILES["file"]["tmp_name"]);
        if ($isImage === false) {
            $data['statusText'] = "File is not an image.";
            $data['status'] = 0;
        }
        if (file_exists($filePathWithOldName)) {
            $data['statusText'] = "file already exists.";
            $data['status'] = 0;
        }
        if ($file->getSize() > 2097152) {
            $data['statusText'] = "File is more than 2MB";
            $data['status'] = 0;
        }
        if ($file->move($data['filePath'],$data['fileNewName'])) {
            $data['statusText'] = basename($_FILES["file"]["name"]) . "uploaded successfully";
            $data['status'] = 1;
        }
        return json_encode($data);
    }
}