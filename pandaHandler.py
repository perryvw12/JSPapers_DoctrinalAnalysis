import pandas
import pandas as pd

def framer(dictionary):
    dataframe = pd.DataFrame(dictionary.items(), columns=['word', 'count'])
    return dataframe

def exporter(data, filename):
    data.to_csv(filename, index=False)
    return