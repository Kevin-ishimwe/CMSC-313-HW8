#include <stdio.h>

const int ROW = 2;
const int COL = 3;

typedef struct {
    int A[ROW][COL];
    int B[ROW][COL];
    int C[ROW][COL];
    int results[ROW][COL];
} Matrix;

void transpose(int mat[ROW][COL], int out[COL][ROW]) {
    for (int i = 0; i < ROW; i++)
        for (int j = 0; j < COL; j++)
            out[j][i] = mat[i][j];
}

void mulMatrix(int num, int mat[ROW][COL], int out[ROW][COL]) {
    for (int i = 0; i < ROW; i++)
        for (int j = 0; j < COL; j++)
            out[i][j] = mat[i][j] * num;
}

void matrixMultiply(int mat1[ROW][COL], int mat2[COL][ROW], int out[ROW][COL]) {
    for (int i = 0; i < ROW; i++)
        for (int j = 0; j < COL; j++) {
            out[i][j] = 0;
            for (int k = 0; k < COL; k++)
                out[i][j] += mat1[i][k] * mat2[k][j];
        }
}

void matrixAdd(int mat1[ROW][COL], int mat2[ROW][COL], int out[ROW][COL]) {
    for (int i = 0; i < ROW; i++)
        for (int j = 0; j < COL; j++)
            out[i][j] = mat1[i][j] + mat2[i][j];
}


void printMatrix(int mat[ROW][COL]) {
    for (int i = 0; i < ROW; i++) {
        for (int j = 0; j < ROW; j++)
            printf("%d ", mat[i][j]);
        printf("\n");
    }
}

void TestD(Matrix* mx) {
    int C_T[COL][ROW];
    int threeB[ROW][COL];
    int mult[ROW][COL];

    transpose(mx->C, C_T);
    mulMatrix(3, mx->B, threeB);
    matrixMultiply(threeB, C_T, mult);
    printf("D = A + 3 * B x transpose(C):\n");
    matrixAdd(mx->A, mult, mx->results);
    printMatrix(mx->results);
}

int main() {
    Matrix mx = {
        .A={{6, 4, 0}, {8, 3, 0}},
        .B={{1, 2, 3}, {4, 5, 6}},
        .C={{2, 4, 6}, {1, 3, 5}}
    };

    TestD(&mx);
    return 0;
}
