def sum (a, b):
    return f"Go learn yourself! ;( ..... {a + b}"

def sub (a, b):
    return f"Go to school! ;( ..... {a - b}"

def mul (a, b):
    return f"Ask yourself! ;( ..... {a * b}"

def div (a, b):
    try:
        return f"Ask your dad! ;( ..... {a / b}"
    except Exception as e:
        return f"Help yourself! ;( ...Error: {e}"