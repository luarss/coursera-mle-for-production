
# String data types that will be converted to indices
CATEGORICAL_FEATURE_KEYS = [
    'Functioning Day', 'Holiday', 'Seasons'
]

# Numerical features that are marked as continuous
FLOAT_FEATURE_KEYS = ['Dew point temperature(degC)',
                       'Snowfall (cm)', 'Solar Radiation (MJ/m2)',
                       'Temperature(degC)', 'Wind speed (m/s)']
INT_FEATURE_KEYS = ['Hour', 'Visibility (10m)',
                   'Humidity(%)', 'Day', 'DayOfWeek', 'Month', 'Year']

# Feature that can be grouped into buckets
# BUCKET_FEATURE_KEYS = ['Day']

# # Number of buckets used by tf.transform for encoding each bucket feature.
# FEATURE_BUCKET_COUNT = {'age': 4}

# Feature that the model will predict
LABEL_KEY = 'Rented Bike Count'

# Utility function for renaming the feature
def transformed_name(key):
    return key + '_xf'
