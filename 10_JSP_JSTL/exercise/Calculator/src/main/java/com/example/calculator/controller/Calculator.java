package com.example.calculator.controller;

public class Calculator {

    public static float calM(float firNum, String ope, float secNum) throws Exception {

        switch (ope){
            case "+":
                return firNum + secNum;

            case "-":
                return firNum - secNum;

            case "*":
                return firNum * secNum;

            case "/":
                if(secNum != 0){
                    return firNum / secNum;
                } else {
                    throw new ArithmeticException("Không thể chia cho 0");
                }

            default:
                throw new Exception("Toán tử không hợp lệ");
        }
    }
}