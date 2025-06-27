import org.junit.Test;
import static org.junit.Assert.*;

public class StringMethodTest {

    @Test
    public void testReverse() {
        StringMethod method = new StringMethod();
        assertEquals("cba", method.reverse("abc"));
        assertEquals("", method.reverse(""));
        assertNull(method.reverse(null));
    }

    @Test
    public void testIsPalindrome() {
        StringMethod method = new StringMethod();
        assertTrue(method.isPalindrome("madam"));
        assertTrue(method.isPalindrome("RaceCar"));
        assertFalse(method.isPalindrome("hello"));
        assertFalse(method.isPalindrome(null));
    }
}
