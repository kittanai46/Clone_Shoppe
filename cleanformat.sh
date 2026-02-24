#!/bin/bash

cd clone_shoppe

echo "🔄 Formatting code..."
dart format . &&

echo "🧹 Cleaning build..."
flutter clean &&

echo "📦 Getting dependencies..."
flutter pub get &&

echo "✅ Clean & Format code is Done!"
