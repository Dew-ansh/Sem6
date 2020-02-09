def check_species(data):
    return data['Species'].isin(['setosa', 'versicolor', 'virginica'])

def check_positive(data):
    return ((data.iloc[:,:-1] > 0).apply(lambda x: x[0] and x[1] and x[2] and x[3], axis = 1))

def compare_petal(data):
    return ( data['Petal.Length'] >= 2 * data['Petal.Width'] )

def check_sepal(data):
    return ( data['Sepal.Length'] <= 30 )

def compare_sepal_petal(data):
    return ( data['Sepal.Length'] > data['Petal.Length'])