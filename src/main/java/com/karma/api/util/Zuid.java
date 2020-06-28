package com.karma.api.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.Scanner;

/**自动生成唯一Zuid值
 * Create By fumengqi on 2020/6/22
 */
public class Zuid {

    public static String getDate() {
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddhhmmss");
        String dateString = formatter.format(currentTime);
        StringBuilder str = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 6; i++) {
            str.append(random.nextInt(10));
        }
        return dateString + str.toString();
    }

    /**
     * 32位数字+字母
     * @return
     */
    public static String getCharAndNum(){
        Random random = new Random();
        StringBuffer valSb = new StringBuffer();
        String charStr = "0123456789abcdefghijklmnopqrstuvwxyz";
        int charLength = charStr.length();

        for (int i = 0; i < 32; i++) {
            int index = random.nextInt(charLength);
            valSb.append(charStr.charAt(index));
        }
        return valSb.toString();
    }

    /**
     * 32位数字、字母、符号
     * @return
     */
    public static String getCharAndNum2(){
        int leng = 32;
        char [] pw = new char[leng];
        Random rm = new Random();
        for(int i = 0; i < leng; i++){
            pw[i] = (char)(rm.nextInt(94)+33);
        }
        return new String(pw);
    }

}
