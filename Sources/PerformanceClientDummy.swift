import Foundation

public class PerformanceClientDummy {

    public init() {}

    public func runTest(minLength: Int, sourceFile: String) {

        let content: String
        do {
            content = try contents(of: sourceFile)
        } catch {
            content = "Bugger!"
        }
        print(content) // prints the content of data.txt

//        while (!StdIn.isEmpty())
//        {  // Build symbol table and count frequencies.
//            String word = StdIn.readString();
//            if (word.length() < minLength) continue;  // Ignore short keys.
//            if (!st.contains(word)) st.put(word, 1);
//            else                    st.put(word, st.get(word) + 1);
//        }
//        // Find a key with the highest frequency count.
//        String max = "";
//        st.put(max, 0);
//        for (String word : st.keys())
//        if (st.get(word) > st.get(max))
//        max = word;
//        StdOut.println(max + " " + st.get(max));
    }
}
