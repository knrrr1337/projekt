import java.util.Scanner;

public class ticTacToe {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        char[][] ticTacToe = {{'-', '-', '-'}, {'-', '-', '-'}, {'-', '-', '-'}};

        //PLAYER ONE = X
        int playerOneX;
        int playerOneY;

        //PLAYER TWO = O
        int botX;
        int botY;

        boolean gameOver = false;
        boolean kovetkezoKor = true;
        boolean isPosValid;
        boolean isYValid;
        boolean isXValid;


        int lepesekSzama = 0;

        String playerOneWinner;
        String playerTwoWinner;

        while (kovetkezoKor) {

            //PLAYER 1 :

            //check if dontetlen :
            if (lepesekSzama == 9 && !gameOver) {
                System.out.println("Nincs már több lehetséges lépés, a játék döntetlen!");
                gameOver = true;
                kovetkezoKor = false;
            }


            //kerje be a poziciot a Player 1-tol, ha mar van ott elem, akkor kerje be ujra
            isPosValid = false;
            isYValid = false;
            isXValid = false;
            if (!gameOver) {
                while (!isPosValid) {
                    System.out.print("Player 1 (X) X-tengely pozicio: ");
                    playerOneX = sc.nextInt();
                    if (0 <= playerOneX && playerOneX < 3) {
                        isXValid = true;
                    }

                    System.out.print("Player 1 (X) Y-tengely pozicio: ");
                    playerOneY = sc.nextInt();
                    if (0 <= playerOneY && playerOneY < 3) {
                        isYValid = true;
                    }

                    if (isYValid && isXValid) {
                        if (ticTacToe[playerOneY][playerOneX] == '-') {
                            ticTacToe[playerOneY][playerOneX] = 'X';
                            lepesekSzama++;
                            isPosValid = true;
                        } else {
                            System.out.println("Ez a pozicio mar foglalt, go agane!");
                        }
                    } else {
                        System.out.println("Valamelyik szam nem jo, go agane");
                    }

                }
            }


            //horizontal check for Player 1 :
            playerOneWinner = "Vége a játéknak, Player 1 (X) győzott " + lepesekSzama + " lépésből!";

            if (!gameOver) {
                System.out.println(lepesekSzama);

                //ROW CHECK
                for (int i = 0; i < ticTacToe.length; i++) {
                    if (ticTacToe[i][0] == 'X' && ticTacToe[i][1] == 'X' && ticTacToe[i][2] == 'X') {
                        gameOver = true;
                        kovetkezoKor = false;
                        for (int j = 0; j < ticTacToe.length; j++) {
                            for (int k = 0; k < ticTacToe[j].length; k++) {
                                System.out.print(ticTacToe[j][k] + "\t");
                            }
                            System.out.println("");
                        }
                        System.out.println(playerOneWinner);
                    }
                }

                //OSZLOP CHECK
                for (int i = 0; i < ticTacToe.length; i++) {
                    if (ticTacToe[0][i] == 'X' && ticTacToe[1][i] == 'X' && ticTacToe[2][i] == 'X') {
                        gameOver = true;
                        kovetkezoKor = false;
                        for (int j = 0; j < ticTacToe.length; j++) {
                            for (int k = 0; k < ticTacToe[j].length; k++) {
                                System.out.print(ticTacToe[j][k] + "\t");
                            }
                            System.out.println("");
                        }
                        System.out.println(playerOneWinner);
                    }
                }

                //DIAGONAL CHECK
                if (ticTacToe[0][0] == 'X' && ticTacToe[1][1] == 'X' && ticTacToe[2][2] == 'X') {
                    gameOver = true;
                    kovetkezoKor = false;
                    for (int i = 0; i < ticTacToe.length; i++) {
                        for (int j = 0; j < ticTacToe[i].length; j++) {
                            System.out.print(ticTacToe[i][j] + "\t");
                        }
                        System.out.println("");
                    }
                    System.out.println(playerOneWinner);
                }


                if (ticTacToe[0][2] == 'X' && ticTacToe[1][1] == 'X' && ticTacToe[2][0] == 'X') {
                    gameOver = true;
                    kovetkezoKor = false;
                    for (int i = 0; i < ticTacToe.length; i++) {
                        for (int j = 0; j < ticTacToe[i].length; j++) {
                            System.out.print(ticTacToe[i][j] + "\t");
                        }
                        System.out.println("");
                    }
                    System.out.println(playerOneWinner);
                }
            }

            for (int i = 0; i < ticTacToe.length; i++) {
                for (int j = 0; j < ticTacToe[i].length; j++) {
                    System.out.print(ticTacToe[i][j] + "\t");
                }
                System.out.println("");
            }


            //BOT :

            isPosValid = false;
            isYValid = false;
            isXValid = false;

            if (!gameOver) {
                while (!isPosValid) {
                    botX = (int)(Math.floor(Math.random() * 3));
                    if (0 <= botX && botX < 3) {
                        isXValid = true;
                    }

                    botY = (int)(Math.floor(Math.random() * 3));
                    if (0 <= botY && botY < 3) {
                        isYValid = true;
                    }


                    if (isYValid && isXValid) {
                        if (ticTacToe[botY][botX] == '-') {
                            ticTacToe[botY][botX] = 'O';
                            lepesekSzama++;
                            isPosValid = true;
                            System.out.println("A gep lepese: " + botX + "; " + botY );
                        }
                    }

                }

            }

            playerOneWinner = "Vége a játéknak, Gep (O) győzott " + lepesekSzama + " lépésből!";
            if (!gameOver) {
                System.out.println(lepesekSzama);

                //ROW CHECK
                for (int i = 0; i < ticTacToe.length; i++) {
                    if (ticTacToe[i][0] == 'O' && ticTacToe[i][1] == 'O' && ticTacToe[i][2] == 'O') {
                        gameOver = true;
                        kovetkezoKor = false;
                        for (int j = 0; j < ticTacToe.length; j++) {
                            for (int k = 0; k < ticTacToe[j].length; k++) {
                                System.out.print(ticTacToe[j][k] + "\t");
                            }
                            System.out.println("");
                        }
                        System.out.println(playerOneWinner);
                    }
                }

                //OSZLOP CHECK
                for (int i = 0; i < ticTacToe.length; i++) {
                    if (ticTacToe[0][i] == 'O' && ticTacToe[1][i] == 'O' && ticTacToe[2][i] == 'O') {
                        gameOver = true;
                        kovetkezoKor = false;
                        for (int j = 0; j < ticTacToe.length; j++) {
                            for (int k = 0; k < ticTacToe[j].length; k++) {
                                System.out.print(ticTacToe[j][k] + "\t");
                            }
                            System.out.println("");
                        }
                        System.out.println(playerOneWinner);
                    }
                }

                //DIAGONAL CHECK
                if (ticTacToe[0][0] == 'O' && ticTacToe[1][1] == 'O' && ticTacToe[2][2] == 'O') {
                    gameOver = true;
                    kovetkezoKor = false;
                    for (int i = 0; i < ticTacToe.length; i++) {
                        for (int j = 0; j < ticTacToe[i].length; j++) {
                            System.out.print(ticTacToe[i][j] + "\t");
                        }
                        System.out.println("");
                    }
                    System.out.println(playerOneWinner);
                }


                if (ticTacToe[0][2] == 'O' && ticTacToe[1][1] == 'O' && ticTacToe[2][0] == 'O') {
                    gameOver = true;
                    kovetkezoKor = false;
                    for (int i = 0; i < ticTacToe.length; i++) {
                        for (int j = 0; j < ticTacToe[i].length; j++) {
                            System.out.print(ticTacToe[i][j] + "\t");
                        }
                        System.out.println("");
                    }
                    System.out.println(playerOneWinner);
                }

                for (int i = 0; i < ticTacToe.length; i++) {
                    for (int j = 0; j < ticTacToe[i].length; j++) {
                        System.out.print(ticTacToe[i][j] + "\t");
                    }
                    System.out.println("");
                }

            }

        }
    }
}