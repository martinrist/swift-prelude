// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "Prelude",
  products: [
    .library(name: "Prelude", targets: ["Either",
                                       "Frp",
                                       "Optics",
                                       "Prelude",
                                       "Reader",
                                       "State",
                                       "Tuple",
                                       "ValidationSemigroup",
                                       "ValidationNearSemiring",
                                       "Writer"])
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
