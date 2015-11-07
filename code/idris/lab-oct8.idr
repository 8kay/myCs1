module president

data president = Washington | Adams | Jefferson | Madison | Monroe 

data state = Virginia | Massachusetts

||| a record of this type represents a president and his name, birth year, birth state, year elected, death year

data PresFact = mkPresFact president Nat state Nat Nat

washington: PresFact 
washington = mkPresFact Washington 1732 Virginia 1789 1799

adams: PresFact
adams = mkPresFact Adams 1735 Massachusetts 1797 1801

jefferson: PresFact
jefferson = mkPresFact Jefferson 1743 Virginia 1809 1836

madison: PresFact
madison = mkPresFact Madison 1751 Virginia 1809 1836

monroe: PresFact
monroe = mkPresFact Monroe 1758 Virginia 1817 1831
