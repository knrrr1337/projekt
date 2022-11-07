import org.w3c.dom.ls.LSOutput;

import java.util.Scanner;

public class tombok {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] tomb;
        tomb = new int[10];

        System.out.println(tomb[0]);

        boolean[] tomb0;
        tomb0 = new boolean[10];

        System.out.println(tomb0[0]);

        String[] tomb1;
        tomb1 = new String[10];

        System.out.println(tomb1[0]);

        byte[] tomb2 = new byte[10];
        tomb2[5] = 7;
        System.out.println(tomb2[5] + "\n");

        byte[] ciklus = new byte[10];

        for (byte i = 0; i < 10; i++){
            ciklus[i] = (byte)(i * 3);
            System.out.println(ciklus[i]);
        }


        int[] RAAWR = new int[10];



        for (int i = 0; i < 10; i++){
            RAAWR[i] = i * 3;
            System.out.println(RAAWR[i]);
        }



    }
}
