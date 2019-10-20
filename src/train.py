import turicreate as tc

# Load the data
data =  tc.SFrame('./data/_frame/cats-dogs.sframe')

# Make a train-test split
train_data, test_data = data.random_split(0.8)

# Create the model
model = tc.image_classifier.create(train_data, target='label')

# Save predictions to an SArray
predictions = model.predict(test_data)

# Evaluate the model and print the results
metrics = model.evaluate(test_data)
print(metrics['accuracy'])

# Save the model for later use in Turi Create
model.save('./data/outputs/mymodel.model')

# Export for use in Core ML
model.export_coreml('./data/outputs/MyCustomImageClassifier.mlmodel')