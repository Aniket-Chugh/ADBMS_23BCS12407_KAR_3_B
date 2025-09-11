import java.util.*;

public class Solution {

    public int numMatchingSubseq(String s, String[] words) {
        // Array of TreeSets for each character
        TreeSet<Integer>[] charIndices = new TreeSet[26];
        for (int i = 0; i < 26; i++) {
            charIndices[i] = new TreeSet<>();
        }

        // Fill TreeSets with indices of each character in s
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            charIndices[c - 'a'].add(i);
        }

        int count = 0;

        // Check each word
        for (int k = 0; k < words.length; k++) {
            String word = words[k];
            int prevIndex = -1; // previous index in s
            boolean isSubsequence = true;

            // Check each character in word
            for (int i = 0; i < word.length(); i++) {
                char c = word.charAt(i);
                TreeSet<Integer> set = charIndices[c - 'a'];
                Integer nextIndex = set.ceiling(prevIndex + 1); // find next index > prevIndex

                if (nextIndex == null) { // no valid next index, word not subsequence
                    isSubsequence = false;
                    break;
                }

                prevIndex = nextIndex; // move to next index
            }

            if (isSubsequence) count++;
        }

        return count;
    }

    // Main for testing
    public static void main(String[] args) {
        Solution solution = new Solution();

        String s = "abcde";
        String[] words = {"a", "bb", "acd", "ace"};

        int result = solution.numMatchingSubseq(s, words);
        System.out.println("Number of matching subsequences: " + result); // Output: 3
    }
}
