### **Comparison of Architecture Types**

| **Type**   | **Abstraction Level** | **Use Cases**                            | **Advantages**                    | **Disadvantages**                 |
| ---------- | --------------------- | ---------------------------------------- | --------------------------------- | --------------------------------- |
| Behavioral | High                  | Algorithm design and testing             | Fast to write and understand      | Not hardware-specific             |
| Structural | Low                   | Hardware design with reusable components | Matches hardware implementation   | Tedious for large designs         |
| Dataflow   | Medium                | Combinational circuit design             | Compact and clear for logic flows | Not ideal for sequential designs  |
| Mixed      | Varies                | Flexible designs combining styles        | Combines the best of both worlds  | Can be harder to manage/debug     |
| RTL        | Medium-Low            | Synthesis-ready sequential designs       | Focused on clocked hardware       | Requires careful clock management |
| Gate-Level | Lowest                | Detailed gate-level verification         | Exact hardware representation     | Very tedious and not scalable     |
### **Comparison of `std_logic` and `std_logic_vector`**

|**Feature**|**`std_logic`**|**`std_logic_vector`**|
|---|---|---|
|**Represents**|A single digital signal|Multiple bits (e.g., a bus)|
|**Size**|1-bit|User-defined (e.g., 4-bit, 8-bit)|
|**States**|9 possible logic states|Each bit can take 9 states|
|**Usage Examples**|Logic gate inputs/outputs|Binary numbers, address buses|
`std_logic` represents a **single digital signal** that can have one of the following **9 possible logic states**:

1. `'U'` - **Uninitialized**: The default value for signals before simulation starts.
2. `'X'` - **Unknown**: A conflict or unknown state (e.g., two drivers with different values).
3. `'0'` - **Logic low**: Binary 0.
4. `'1'` - **Logic high**: Binary 1.
5. `'Z'` - **High impedance**: Indicates no driving source (used in tri-state logic).
6. `'W'` - **Weak unknown**: A weak driver with an unknown value.
7. `'L'` - **Weak 0**: A weak driver with a logic 0 value.
8. `'H'` - **Weak 1**: A weak driver with a logic 1 value.
9. `'-'` - **Don't care**: Used in simulations to indicate that a value does not matter.