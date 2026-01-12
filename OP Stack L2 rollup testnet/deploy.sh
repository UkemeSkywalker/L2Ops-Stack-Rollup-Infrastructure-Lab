#!/bin/bash
set -e

echo "🚀 Starting L2 Rollup Infrastructure Deployment..."

# Change to Infra directory
cd "OP Stack L2 rollup testnet/Infra"

# Initialize Terraform
echo "📦 Initializing Terraform..."
terraform init

# Apply Terraform configuration
echo "🏗️  Applying Terraform configuration..."
terraform apply -auto-approve

# Get the public IP from Terraform output
echo "📡 Getting EC2 public IP..."
PUBLIC_IP=$(terraform output -raw public_ip)
echo "✅ EC2 Public IP: $PUBLIC_IP"

# Go back to the L2 rollup directory
cd ..

# Copy .example.env to .env
echo "📋 Creating .env file from .example.env..."
cp .example.env .env

# Update P2P_ADVERTISE_IP with the actual public IP
echo "🔧 Updating P2P_ADVERTISE_IP with EC2 public IP..."
sed -i.bak "s/P2P_ADVERTISE_IP=\"127.0.0.1\"/P2P_ADVERTISE_IP=\"$PUBLIC_IP\"/" .env

echo "✅ Deployment complete!"
echo "📝 Please update the PRIVATE_KEY in .env file before running the L2 rollup"
echo "🌐 EC2 Instance Public IP: $PUBLIC_IP"