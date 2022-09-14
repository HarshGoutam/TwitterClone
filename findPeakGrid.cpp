class Solution {
public:
    vector<int> findPeakGrid(vector<vector<int>>& mat) {
        //binary search for peak 
        int startCol = 0, endCol = mat[0].size()-1;
        while(startCol <= endCol){
            // binary seach for best col and also find the row for which we get the localised peak wrt to that col
            int maxRow = 0, midCol = startCol + (endCol - startCol)/2;
            for(int row = 0; row < mat.size();row++){
                maxRow = mat[row][midCol] >= mat[maxRow][midCol] ? row : maxRow;
            }
            bool leftisBigger = midCol-1 >= startCol and mat[maxRow][midCol-1] > mat[maxRow][midCol];
            bool rightisBigger = midCol + 1 <= endCol and mat[maxRow][midCol+1] > mat[maxRow][midCol];
            if(!leftisBigger and !rightisBigger){
                return {maxRow,midCol};
            }else if(rightisBigger){
                startCol = midCol + 1;
                
            }else{
                //left is big
                endCol  = midCol - 1;
            }
            
        }
        return {-1,-1};
    }
};
