import static org.junit.Assert.*; //  for assertions
import org.junit.Test;            // for @Test

public class AssertionsTest {

    @Test
    public void testAssertions() {
        
        assertEquals(5, 2 + 3);

        
        assertTrue(5 > 3);

        
        assertFalse(5 < 3);

        
        assertNull(null);

        
        assertNotNull(new Object());
    }
}
