def have_common_elements(list1, list2):

    for element in list1:
        if element in list2:
            return True
    return False