// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "Prelude",
  products: [
    .library(name: "Either", type: .dynamic, targets: ["Either"]),
    .library(name: "Frp", type: .dynamic, targets: ["Frp"]),
    .library(name: "Optics", type: .dynamic, targets: ["Optics"]),
    .library(name: "Prelude", type: .dynamic, targets: ["Prelude"]),
    .library(name: "Reader", type: .dynamic, targets: ["Reader"]),
    .library(name: "State", type: .dynamic, targets: ["State"]),
    .library(name: "Tuple", type: .dynamic, targets: ["Tuple"]),
    .library(name: "ValidationSemigroup", type: .dynamic, targets: ["ValidationSemigroup"]),
    .library(name: "ValidationNearSemiring", type: .dynamic, targets: ["ValidationNearSemiring"]),
    .library(name: "Writer", type: .dynamic, targets: ["Writer"]),
  ],
  targets: [
    .target(name: "Either", dependencies: ["Prelude"]),
    .testTarget(name: "EitherTests", dependencies: ["Either"]),

    .target(name: "Frp", dependencies: ["Prelude", "ValidationSemigroup"]),
    .testTarget(name: "FrpTests", dependencies: ["Frp"]),

    .target(name: "Optics", dependencies: ["Prelude", "Either"]),
    .testTarget(name: "OpticsTests", dependencies: ["Optics"]),

    .target(name: "Prelude", dependencies: []),
    .testTarget(name: "PreludeTests", dependencies: ["Prelude"]),

    .target(name: "Reader", dependencies: ["Prelude"]),
    .testTarget(name: "ReaderTests", dependencies: ["Reader"]),

    .target(name: "State", dependencies: ["Prelude"]),
    .testTarget(name: "StateTests", dependencies: ["State"]),

    .target(name: "Tuple", dependencies: ["Prelude"]),
    .testTarget(name: "TupleTests", dependencies: ["Tuple"]),

    .target(name: "ValidationSemigroup", dependencies: ["Prelude"]),
    .testTarget(name: "ValidationSemigroupTests", dependencies: ["ValidationSemigroup"]),

    .target(name: "ValidationNearSemiring", dependencies: ["Prelude", "Either"]),
    .testTarget(name: "ValidationNearSemiringTests", dependencies: ["ValidationNearSemiring"]),

    .target(name: "Writer", dependencies: ["Prelude"]),
    .testTarget(name: "WriterTests", dependencies: ["Writer"]),
  ]
)
