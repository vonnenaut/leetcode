class Solution {    
    public static void main(String[] args) {
        int[] prices = {7, 1, 5, 3, 6, 4};

        Solution my_solution = new Solution();

        int max_profit = my_solution.maxProfit(prices);
        System.out.println(max_profit);
    }
    
    public int maxProfit(int[] prices) {
        int min_price = Integer.MAX_VALUE;
        int max_profit = 0;
        
        for(int idx = 0; idx < prices.length; idx++) {
            if(prices[idx] < min_price)
                min_price = prices[idx];
            else if (prices[idx] - min_price > max_profit)
               max_profit = prices[idx] - min_price;
        }
        
        return max_profit;
    }
}