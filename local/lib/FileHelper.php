<?php
/**
 * Created by PhpStorm.
 * Date: 13.12.2016
 * Time: 23:03
 *
 * @author dev@dermanov.ru
 */


class FileHelper
{
    /**
     * Saves sinlge file from post
     * */
    public static function savePostFile( $FILE_NAME, $path )
    {
        $file = $_FILES[ $FILE_NAME ];

        $f = new \CFile();
        
        $result = $f->SaveFile($file, $path);
        
        //if (!intval($result)){
        //    throw new \Exception ( "Error while save '$FILE_NAME': $result" );
        //}
        
        return $result;
    }
    
    /**
     * Saves multi file from post
     * */
    public static function savePostMultiFile( $FILE_NAME, $path )
    {
        $result = array();
        
        $f = new \CFile();
        $files = $_FILES[ $FILE_NAME ];

        foreach ( $files["name"] as $index => $file ) {
            $fileArray = array(
                "name"  => $files["name"][ $index ],
                "error" => $files["error"][ $index ],
                "size"  => $files["size"][ $index ],
                "tmp_name" => $files["tmp_name"][ $index ],
                "type"     => $files["type"][ $index ],
            );

            $result[] = $f->SaveFile($fileArray, $path);
        }

        return $result;
    }
    
    
    // TODO public static function checkPostFile("COVER_FILE", "image", 1024 * 1024 * 5);
    // TODO public static function checkPostMultiFile("VIDEO_FILE", "video", 1024 * 1024 * 200, 5);
}