package org.image.test;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;


public class ImageRar {
/*
    public void test(){



        Thumbnails.of(new File("original.jpg"))
                .size(160, 160)
                .rotate(90)
                .watermark(ImageIO.read(new File("watermark.png")), Positions.BOTTOM_RIGHT, 0.5f)
                .outputQuality(0.8)
                .toFile(new File("image-with-watermark.jpg"));
    }*/

    public static void main(String[] args) throws IOException {

//                System.out.println("--"+request.getSession().getServletContext().getRealPath(File.separator)+"---");
        File directory = new File("。");
        System.out.println(directory.getCanonicalPath()+":"+directory.getAbsolutePath()+":" + directory.getPath());
        //得到的是C:\test\abc
            //得到的是C:\test\abc
        directory.getPath();                    //得到的是abc

        ImageRar thumbnailatorTest = new ImageRar();
//        thumbnailatorTest.test1();
        thumbnailatorTest.test2();
//        thumbnailatorTest.test3();
//        thumbnailatorTest.test4();
////        thumbnailatorTest.test5();
//        thumbnailatorTest.test6();
//        thumbnailatorTest.test7();
////        thumbnailatorTest.test8();
//        thumbnailatorTest.test9();










    }
/*

    */
/**
     * 指定大小进行缩放
     *
     * @throws IOException
     */

    private void test1() throws IOException {

/*
         * size(width,height) 若图片横比200小，高比300小，不变
         * 若图片横比200小，高比300大，高缩小到300，图片比例不变 若图片横比200大，高比300小，横缩小到200，图片比例不变
         * 若图片横比200大，高比300大，图片按比例缩小，横为200或高为300
         */

        Thumbnails.of("10.jpg").size(300, 200).toFile(
                "background_200x300.jpg");
        Thumbnails.of("1.jpg").size(2560, 2048).toFile(
                "background_2560x2048.jpg");
    }


/**
     * 按照比例进行缩放
     *
     * @throws IOException
     */

    private void test2() throws IOException {

/**
         * scale(比例)
         */

        //图片尺寸不变，压缩图片文件大小outputQuality实现,参数1为最高质量
        Thumbnails.of("image/1.jpg").scale(1f).outputQuality(0.25f).toFile("ia.jpg");

        Thumbnails.of("a.jpg").scale(0.5f,1f)
                .toFile("a_50%.jpg");
        Thumbnails.of("a.jpg").scale(1f).toFile(
                "a_100%.jpg");

    }


/**
     * 不按照比例，指定大小进行缩放
     *
     * @throws IOException
     *//*

    private void test3() throws IOException {
        */
/**
         * keepAspectRatio(false) 默认是按照比例缩放的
         *//*

        Thumbnails.of("background.jpg").size(120, 120).keepAspectRatio(false)
                .toFile("background_120x120.jpg");
    }

    */
/**
     * 旋转
     *
     * @throws IOException
     *//*

    private void test4() throws IOException {
        */
/**
         * rotate(角度),正数：顺时针 负数：逆时针
         *//*

        Thumbnails.of("background.jpg").size(1280, 1024).rotate(90).toFile(
                "background+90.jpg");
        Thumbnails.of("background.jpg").size(1280, 1024).rotate(-90).toFile(
                "background-90.jpg");
    }

    */
/**
     * 水印
     *
     * @throws IOException
     *//*

*/
/*    private void test5() throws IOException {
        *//*
*/
/**
         * watermark(位置，水印图，透明度)
         *//*
*/
/*
        Thumbnails.of("background.jpg").size(1280, 1024).watermark(
                Positions.BOTTOM_RIGHT,
                ImageIO.read(new File("backgroundwatermark.png")), 0.5f)
                .outputQuality(0.8f).toFile(
                "background_watermark_bottom_right.jpg");
        Thumbnails.of("background.jpg").size(1280, 1024).watermark(
                Positions.CENTER,
                ImageIO.read(new File("background——watermark.png")), 0.5f)
                .outputQuality(0.8f).toFile("background_watermark_center.jpg");
    }*//*


    */
/**
     * 裁剪
     *
     * @throws IOException
     *//*

    private void test6() throws IOException {
        */
/**
         * 图片中心400*400的区域
         *//*

        Thumbnails.of("background.jpg").sourceRegion(Positions.CENTER, 400,
                400).size(200, 200).keepAspectRatio(false).toFile(
                "background_region_center.jpg");
        */
/**
         * 图片右下400*400的区域
         *//*

        Thumbnails.of("background.jpg").sourceRegion(Positions.BOTTOM_RIGHT,
                400, 400).size(200, 200).keepAspectRatio(false).toFile(
                "background_region_bootom_right.jpg");
        */
/**
         * 指定坐标
         *//*

        Thumbnails.of("background.jpg").sourceRegion(600, 500, 400, 400).size(
                200, 200).keepAspectRatio(false).toFile(
                "background_region_coord.jpg");
    }

    */
/**
     * 转化图像格式
     *
     * @throws IOException
     *//*

    private void test7() throws IOException {
        */
/**
         * outputFormat(图像格式)
         *//*

        Thumbnails.of("background.jpg").size(1280, 1024).outputFormat("png")
                .toFile("background_1280x1024.png");
        Thumbnails.of("background.jpg").size(1280, 1024).outputFormat("gif")
                .toFile("background_1280x1024.gif");
    }

    */
/**
     * 输出到OutputStream
     *
     * @throws IOException
     *//*

*/
/*    private void test8() throws IOException {
        *//*
*/
/**
         * toOutputStream(流对象)
         *//*
*/
/*
        OutputStream os = new FileOutputStream(
                "background.jpg");
        Thumbnails.of("background.jpg").size(1280, 1024).toOutputStream(os);
    }*//*


    */
/**
     * 输出到BufferedImage
     *
     * @throws IOException
     *//*

    private void test9() throws IOException {
        */
/**
         * asBufferedImage() 返回BufferedImage
         *//*

        BufferedImage thumbnail = Thumbnails.of("images/test.jpg").size(1280,
                1024).asBufferedImage();
        ImageIO.write(thumbnail, "jpg", new File(
                "background_1280x1024_BufferedImage.jpg"));
    }
*/


}
