.class public Lcyanogenmod/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static SOLID_COLORS:[I

.field private static final sColorTable:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcyanogenmod/util/ColorUtils;->SOLID_COLORS:[I

    .line 336
    const/16 v0, 0x240

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcyanogenmod/util/ColorUtils;->sColorTable:[D

    .line 34
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        -0x10000
        -0x5b00
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x1
        -0x1000000
    .end array-data

    .line 336
    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fc742d5e87f5ad4L    # 0.18172716
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fd052857e2eaf15L    # 0.25503671
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fd3cd8db22fbd88L    # 0.30942099
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fd6a0f3f6317518L    # 0.35357379
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fd904c15ad3b620L    # 0.39091524
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fdb162b907c8f73L    # 0.42322816
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fdce6fed22d89d1L    # 0.45159884
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fde8338da112dfbL    # 0.47675916
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fdff381b7a59e35L    # 0.49923747
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fe09f347e0bf480L    # 0.51943421
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fe1652d7685c34eL    # 0.54360078
        0x3fb6387dcadc06d2L    # 0.08679949
        0x3ff0000000000000L    # 1.0
        0x3fe21e34f453797aL    # 0.56618736
        0x3fc200fcbfaeac25L    # 0.14065513
        0x3ff0000000000000L    # 1.0
        0x3fe2cb91b9506e2dL    # 0.58734976
        0x3fc78111f8d0e1afL    # 0.18362641
        0x3ff0000000000000L    # 1.0
        0x3fe36e8ceb6060beL    # 0.60724493
        0x3fcc562c318c3f13L    # 0.22137978
        0x3ff0000000000000L    # 1.0
        0x3fe408365a5a139dL    # 0.62600248
        0x3fd060fc2eba27afL    # 0.2559195
        0x3ff0000000000000L    # 1.0
        0x3fe49971f15efd66L    # 0.64373109
        0x3fd271d0f2f72df4L    # 0.28819679
        0x3ff0000000000000L    # 1.0
        0x3fe5230187699647L    # 0.66052319
        0x3fd46636b5f4991aL    # 0.31873863
        0x3ff0000000000000L    # 1.0
        0x3fe5a58bb58054faL    # 0.67645822
        0x3fd6437661dc1311L    # 0.34786758
        0x3ff0000000000000L    # 1.0
        0x3fe621a12fbb03a2L    # 0.69160518
        0x3fd80d0a29a4941fL    # 0.37579588
        0x3ff0000000000000L    # 1.0
        0x3fe697c0abd733d9L    # 0.70602449
        0x3fd9c55dc2a8dc83L    # 0.40267128
        0x3ff0000000000000L    # 1.0
        0x3fe7085a11437449L    # 0.71976951
        0x3fdb6e3511da9df1L    # 0.42860152
        0x3ff0000000000000L    # 1.0
        0x3fe773d0b2349b12L    # 0.7328876
        0x3fdd08e719d51342L    # 0.45366838
        0x3ff0000000000000L    # 1.0
        0x3fe7da7d6484b9e4L    # 0.74542112
        0x3fde9681364b6b8eL    # 0.47793608
        0x3ff0000000000000L    # 1.0
        0x3fe83caffee0c629L    # 0.75740814
        0x3fe00beec0e86809L    # 0.50145662
        0x3ff0000000000000L    # 1.0
        0x3fe89ab095899494L    # 0.76888303
        0x3fe0c6d8a1c23214L    # 0.52427322
        0x3ff0000000000000L    # 1.0
        0x3fe8f4c096de7e50L    # 0.77987699
        0x3fe17c4b6a8c90c8L    # 0.54642268
        0x3ff0000000000000L    # 1.0
        0x3fe94b1b97602e69L    # 0.79041843
        0x3fe22c8a0c32e936L    # 0.56793692
        0x3ff0000000000000L    # 1.0
        0x3fe99df80d984404L    # 0.80053332
        0x3fe2d7cfba92e372L    # 0.58884417
        0x3ff0000000000000L    # 1.0
        0x3fe9ed87fde5c973L    # 0.81024551
        0x3fe37e5179c53de2L    # 0.60916971
        0x3ff0000000000000L    # 1.0
        0x3fea39f965dcfe9eL    # 0.81957693
        0x3fe4203f807382daL    # 0.62893653
        0x3ff0000000000000L    # 1.0
        0x3fea8376cd3bdd7cL    # 0.82854786
        0x3fe4bdc5fe7c7241L    # 0.6481657
        0x3ff0000000000000L    # 1.0
        0x3feaca277b99ff45L    # 0.83717703
        0x3fe5570de3986b46L    # 0.66687674
        0x3ff0000000000000L    # 1.0
        0x3feb0e3003febd35L    # 0.84548188
        0x3fe5ec3d6032c5a5L    # 0.68508786
        0x3ff0000000000000L    # 1.0
        0x3feb4fb254fc5bb1L    # 0.85347859
        0x3fe67d7850c99c16L    # 0.70281616
        0x3ff0000000000000L    # 1.0
        0x3feb8ece1eb170fcL    # 0.86118227
        0x3fe70ae089174063L    # 0.72007777
        0x3ff0000000000000L    # 1.0
        0x3febcba0fdbc02fbL    # 0.86860704
        0x3fe79496147ee812L    # 0.73688797
        0x3ff0000000000000L    # 1.0
        0x3fec0646a62ca4faL    # 0.87576611
        0x3fe81ab77bd7bcc0L    # 0.75326132
        0x3ff0000000000000L    # 1.0
        0x3fec3ed913d7f926L    # 0.88267187
        0x3fe89d61d588074bL    # 0.76921169
        0x3ff0000000000000L    # 1.0
        0x3fec7570afeb6a9dL    # 0.88933596
        0x3fe91cb0fb35150bL    # 0.78475236
        0x3ff0000000000000L    # 1.0
        0x3fecaa24712383beL    # 0.89576933
        0x3fe998bf9f3cc6b0L    # 0.79989606
        0x3ff0000000000000L    # 1.0
        0x3fecdd09fc02447eL    # 0.9019823
        0x3fea11a7678d82e0L    # 0.81465502
        0x3ff0000000000000L    # 1.0
        0x3fed1bb1d21f9cfeL    # 0.90963069
        0x3fea821b2d82f00aL    # 0.8283821
        0x3ff0000000000000L    # 1.0
        0x3fed58f4be2d77b2L    # 0.91710889
        0x3feaf0eae9985f88L    # 0.84190889
        0x3ff0000000000000L    # 1.0
        0x3fed94d5f0370a2dL    # 0.92441842
        0x3feb5e1adda6e4b1L    # 0.85523742
        0x3ff0000000000000L    # 1.0
        0x3fedcf59949bd8e4L    # 0.93156127
        0x3febc9add916b21eL    # 0.86836903
        0x3ff0000000000000L    # 1.0
        0x3fee0884be96284bL    # 0.93853986
        0x3fec33a5a99d47cfL    # 0.88130458
        0x3ff0000000000000L    # 1.0
        0x3fee405d37e97b59L    # 0.94535695
        0x3fec9c03a175302eL    # 0.8940447
        0x3ff0000000000000L    # 1.0
        0x3fee76e9660aa0eeL    # 0.95201559
        0x3fed02c8acd78ef3L    # 0.90658983
        0x3ff0000000000000L    # 1.0
        0x3feeac3029e95d7cL    # 0.95851906
        0x3fed67f5b7fd87d6L    # 0.91894041
        0x3ff0000000000000L    # 1.0
        0x3feee038b4fd4d48L    # 0.96487079
        0x3fedcb8bb9dd0600L    # 0.9310969
        0x3ff0000000000000L    # 1.0
        0x3fef130a99610f8fL    # 0.97107439
        0x3fee2d8bd9bd7618L    # 0.94305985
        0x3ff0000000000000L    # 1.0
        0x3fef44ad7ea8d272L    # 0.97713351
        0x3fee8df77f52f16aL    # 0.95482993
        0x3ff0000000000000L    # 1.0
        0x3fef75293cba458cL    # 0.98305189
        0x3feeecd05d7b055aL    # 0.96640795
        0x3ff0000000000000L    # 1.0
        0x3fefa485a61cb4c2L    # 0.98883326
        0x3fef4a18723cb365L    # 0.97779486
        0x3ff0000000000000L    # 1.0
        0x3fefd2caa2d0fadaL    # 0.99448139
        0x3fefa5d21c420000L    # 0.98899179
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fefa9cff29c1448L    # 0.98947904
        0x3fefcaa5bb3aff05L    # 0.99348723
        0x3ff0000000000000L    # 1.0
        0x3fef57481064fd05L    # 0.97940448
        0x3fef975d645f252aL    # 0.98722715
        0x3ff0000000000000L    # 1.0
        0x3fef0831ad2135dbL    # 0.96975025
        0x3fef660ae6b8dc2aL    # 0.98120637
        0x3ff0000000000000L    # 1.0
        0x3feebc5a337d3001L    # 0.96049223
        0x3fef369410c39ca2L    # 0.9754124
        0x3ff0000000000000L    # 1.0
        0x3fee7392b9ab87d9L    # 0.95160805
        0x3fef08e05e7a08dbL    # 0.96983355
        0x3ff0000000000000L    # 1.0
        0x3fee2d5aa161392bL    # 0.94303638
        0x3feedca34970b74dL    # 0.96443333
        0x3ff0000000000000L    # 1.0
        0x3fede9eb25d34e46L    # 0.93480451
        0x3feeb204ca6a1bfeL    # 0.9592308
        0x3ff0000000000000L    # 1.0
        0x3feda916644579ddL    # 0.92689056
        0x3fee88ebac35fe6aL    # 0.95421394
        0x3ff0000000000000L    # 1.0
        0x3fed6ab78943b60dL    # 0.91927697
        0x3fee61441d664254L    # 0.9493733
        0x3ff0000000000000L    # 1.0
        0x3fed2eac75ea3cf5L    # 0.91194747
        0x3fee3afb9968f232L    # 0.94470005
        0x3ff0000000000000L    # 1.0
        0x3fecf4d55f4285b7L    # 0.9048869
        0x3fee1600d30eb047L    # 0.94018594
        0x3ff0000000000000L    # 1.0
        0x3fecbd14ae0cee25L    # 0.89808115
        0x3fedf2438ef5fc9cL    # 0.93582323
        0x3ff0000000000000L    # 1.0
        0x3fec874ede8a6472L    # 0.8915171
        0x3fedcfb4a38b34fdL    # 0.93160469
        0x3ff0000000000000L    # 1.0
        0x3fec536a2ff48f5fL    # 0.88518247
        0x3fedae45d8d23ea7L    # 0.92752354
        0x3ff0000000000000L    # 1.0
        0x3fec214e9f1f6a7eL    # 0.87906581
        0x3fed8de9cd8e93acL    # 0.9235734
        0x3ff0000000000000L    # 1.0
        0x3febf0e5b0c96108L    # 0.8731564
        0x3fed6e93ec867b85L    # 0.91974827
        0x3ff0000000000000L    # 1.0
        0x3febc21a5c21beedL    # 0.86744421
        0x3fed503871e16ec5L    # 0.91604254
        0x3ff0000000000000L    # 1.0
        0x3feb94d8e533f6d3L    # 0.86191983
        0x3fed32cc3019ce32L    # 0.91245088
        0x3ff0000000000000L    # 1.0
        0x3feb690ecccc76e7L    # 0.85657444
        0x3fed1644b5919ccbL    # 0.90896831
        0x3ff0000000000000L    # 1.0
        0x3feb3eaab5a0b643L    # 0.85139976
        0x3fecfa981c40fe4dL    # 0.90559011
        0x3ff0000000000000L    # 1.0
        0x3feb159c4418de9eL    # 0.84638799
        0x3fecdfbd0f149aedL    # 0.90231183
        0x3ff0000000000000L    # 1.0
        0x3feaedd418f1688eL    # 0.8415318
        0x3fecc5aab9d2742cL    # 0.89912926
        0x3ff0000000000000L    # 1.0
        0x3feac743c11ff060L    # 0.8368243
        0x3fecac58c919e4d9L    # 0.89603843
        0x3ff0000000000000L    # 1.0
        0x3feaa1dd903e7c12L    # 0.83225897
        0x3fec93bf5a4875e6L    # 0.89303558
        0x3ff0000000000000L    # 1.0
        0x3fea7d94b0a6a672L    # 0.82782969
        0x3fec7bd6f0bd16f7L    # 0.89011714
        0x3ff0000000000000L    # 1.0
        0x3fea5a5cf87e8165L    # 0.82353066
        0x3fec64987b36821dL    # 0.88727974
        0x3ff0000000000000L    # 1.0
        0x3fea382aef16f997L    # 0.81935641
        0x3fec4dfd3e59acf0L    # 0.88452017
        0x3ff0000000000000L    # 1.0
        0x3fea16f3b213e3e3L    # 0.81530175
        0x3fec37fee4ccf3b9L    # 0.88183541
        0x3ff0000000000000L    # 1.0
        0x3fe9f6ad0587287eL    # 0.8113618
        0x3fec22975f01c324L    # 0.87922257
        0x3ff0000000000000L    # 1.0
        0x3fe9d74d28fda532L    # 0.80753191
        0x3fec0dc0edf15fa9L    # 0.87667891
        0x3ff0000000000000L    # 1.0
        0x3fe9b8cae79a5886L    # 0.80380769
        0x3febf97618601e23L    # 0.87420182
        0x3ff0000000000000L    # 1.0
        0x3fe99b1d829cd2dfL    # 0.80018497
        0x3febe5b1aadd63c9L    # 0.87178882
        0x3ff0000000000000L    # 1.0
        0x3fe97e3cb161367cL    # 0.7966598
        0x3febd26eb7c3a633L    # 0.86943756
        0x3ff0000000000000L    # 1.0
        0x3fe9622096a37007L    # 0.79322843
        0x3febbfa8871d402dL    # 0.86714579
        0x3ff0000000000000L    # 1.0
        0x3fe946c1b0640b6dL    # 0.78988728
        0x3febad5a9c02d572L    # 0.86491137
        0x3ff0000000000000L    # 1.0
        0x3fe92c18e2a4fb4dL    # 0.78663296
        0x3feb9b80a9de8b3bL    # 0.86273225
        0x3ff0000000000000L    # 1.0
        0x3fe9121f6cacd185L    # 0.78346225
        0x3feb8a16a4873366L    # 0.8606065
        0x3ff0000000000000L    # 1.0
        0x3fe8f8ced8eb940dL    # 0.78037207
        0x3feb79189aab926aL    # 0.85853224
        0x3ff0000000000000L    # 1.0
        0x3fe8e02107b78466L    # 0.7773595
        0x3feb6882db67196aL    # 0.85650771
        0x3ff0000000000000L    # 1.0
        0x3fe8c81024905827L    # 0.77442176
        0x3feb5851d60b8fd6L    # 0.85453121
        0x3ff0000000000000L    # 1.0
        0x3fe8b09690a5aa1eL    # 0.77155617
        0x3feb488224dddae7L    # 0.85260112
        0x3ff0000000000000L    # 1.0
        0x3fe899af086bb459L    # 0.76876022
        0x3feb391082593627L    # 0.85071588
        0x3ff0000000000000L    # 1.0
        0x3fe883546deb6af3L    # 0.76603147
        0x3feb29f9d94a5e9eL    # 0.84887402
        0x3ff0000000000000L    # 1.0
        0x3fe86d81ee57361dL    # 0.76336762
        0x3feb1b3b29f7a035L    # 0.84707411
        0x3ff0000000000000L    # 1.0
        0x3fe85832e1d49bceL    # 0.76076645
        0x3feb0cd19a3c00e2L    # 0.84531479
        0x3ff0000000000000L    # 1.0
        0x3fe84362e0f5cea4L    # 0.75822586
        0x3feafeba7028dceeL    # 0.84359476
        0x3ff0000000000000L    # 1.0
        0x3fe82f0daf401effL    # 0.75574383
        0x3feaf0f30ca7833cL    # 0.84191277
        0x3ff0000000000000L    # 1.0
        0x3fe81b2f408a5ebeL    # 0.75331843
        0x3feae378eb79354bL    # 0.84026762
        0x3ff0000000000000L    # 1.0
        0x3fe807c3ae4019ccL    # 0.7509478
        0x3fead649a3372734L    # 0.83865816
        0x3ff0000000000000L    # 1.0
        0x3fe7f4c7421e5d8eL    # 0.74863017
        0x3feac962e5527faaL    # 0.83708329
        0x3ff0000000000000L    # 1.0
        0x3fe7e2367633b8eaL    # 0.74636386
        0x3feabcc27357908bL    # 0.83554194
        0x3ff0000000000000L    # 1.0
        0x3fe7d00dd4a9e5edL    # 0.74414722
        0x3feab066346765c0L    # 0.83403311
        0x3ff0000000000000L    # 1.0
        0x3fe7be4a22b8e793L    # 0.74197871
        0x3feaa44c1a5fd2a3L    # 0.83255582
        0x3ff0000000000000L    # 1.0
        0x3fe7ace835b3ec00L    # 0.73985682
        0x3fea98722739d5baL    # 0.83110912
        0x3ff0000000000000L    # 1.0
        0x3fe79be50de13f20L    # 0.73778012
        0x3fea8cd677c66021L    # 0.82969211
        0x3ff0000000000000L    # 1.0
        0x3fe78b3dc65f1f75L    # 0.73574723
        0x3fea81773e4ff1dbL    # 0.82830393
        0x3ff0000000000000L    # 1.0
        0x3fe77aef9a8221d9L    # 0.73375683
        0x3fea7652b27f6ea0L    # 0.82694373
        0x3ff0000000000000L    # 1.0
        0x3fe76af7e076cdbdL    # 0.73180765
        0x3fea6b6726d5acc5L    # 0.82561071
        0x3ff0000000000000L    # 1.0
        0x3fe75b53fe84d5bdL    # 0.72989845
        0x3fea60b2fdeeadc8L    # 0.8243041
        0x3ff0000000000000L    # 1.0
        0x3fe74c0185e70a3bL    # 0.72802807
        0x3fea5634aa819e50L    # 0.82302316
        0x3ff0000000000000L    # 1.0
        0x3fe73cfe12950307L    # 0.72619537
        0x3fea4bea9f45ab05L    # 0.82176715
        0x3ff0000000000000L    # 1.0
        0x3fe72e4760bcae47L    # 0.72439927
        0x3fea41d36f2856e1L    # 0.82053539
        0x3ff0000000000000L    # 1.0
        0x3fe71fdb3ca72548L    # 0.72263872
        0x3fea37edb7d3ec51L    # 0.81932722
        0x3ff0000000000000L    # 1.0
        0x3fe711b782b8ac84L    # 0.7209127
        0x3fea2e3811945207L    # 0.81814197
        0x3ff0000000000000L    # 1.0
        0x3fe703da2f8bdec6L    # 0.71922025
        0x3fea24b13fa88c7cL    # 0.81697905
        0x3ff0000000000000L    # 1.0
        0x3fe6f6414a781e4aL    # 0.71756043
        0x3fea1b57efd61144L    # 0.81583783
        0x3ff0000000000000L    # 1.0
        0x3fe6e8eaf04e5c2eL    # 0.71593234
        0x3fea122af5771002L    # 0.81471775
        0x3ff0000000000000L    # 1.0
        0x3fe6dbd5489c5104L    # 0.7143351
        0x3fea092923e5b856L    # 0.81361825
        0x3ff0000000000000L    # 1.0
        0x3fe6cefe95c7a7f5L    # 0.71276788
        0x3fea005153da9d9bL    # 0.81253878
        0x3ff0000000000000L    # 1.0
        0x3fe6c26524f2d39dL    # 0.71122987
        0x3fe9f7a27387e20cL    # 0.81147883
        0x3ff0000000000000L    # 1.0
        0x3fe6b607535b71c1L    # 0.70972029
        0x3fe9ef1b711fa7e6L    # 0.81043789
        0x3ff0000000000000L    # 1.0
        0x3fe6a9e388fbe797L    # 0.70823838
        0x3fe9e6bb4032751dL    # 0.80941546
        0x3ff0000000000000L    # 1.0
        0x3fe69df84348293aL    # 0.70678342
        0x3fe9de80ef28c241L    # 0.80841109
        0x3ff0000000000000L    # 1.0
        0x3fe69243ffb42abfL    # 0.70535469
        0x3fe9d66b870ca428L    # 0.80742432
        0x3ff0000000000000L    # 1.0
        0x3fe686c55bea3695L    # 0.70395153
        0x3fe9ce7a10e82faaL    # 0.80645469
        0x3ff0000000000000L    # 1.0
        0x3fe67b7af036336eL    # 0.70257327
        0x3fe9c6abb5fbcff0L    # 0.8055018
        0x3ff0000000000000L    # 1.0
        0x3fe670636a5d96dfL    # 0.70121928
        0x3fe9beff8f6cc4faL    # 0.80456522
        0x3ff0000000000000L    # 1.0
        0x3fe6657d7d843a37L    # 0.69988894
        0x3fe9b774c67b79f4L    # 0.80364455
        0x3ff0000000000000L    # 1.0
        0x3fe65ac7f24785a6L    # 0.69858167
        0x3fe9b00a8f252178L    # 0.80273941
        0x3ff0000000000000L    # 1.0
        0x3fe650418be67da3L    # 0.69729688
        0x3fe9a8c022c551d9L    # 0.80184943
        0x3ff0000000000000L    # 1.0
        0x3fe645e92319b589L    # 0.69603402
        0x3fe9a194b5593db4L    # 0.80097423
        0x3ff0000000000000L    # 1.0
        0x3fe63bbd95f82469L    # 0.69479255
        0x3fe99a879057a685L    # 0.80011347
        0x3ff0000000000000L    # 1.0
        0x3fe631bdd2b3ec81L    # 0.69357196
        0x3fe99397fd374dcaL    # 0.79926681
        0x3ff0000000000000L    # 1.0
        0x3fe627e8c220cc53L    # 0.69237173
        0x3fe98cc5456ef500L    # 0.79843391
        0x3ff0000000000000L    # 1.0
        0x3fe61e3d628c1146L    # 0.69119138
        0x3fe9860ec29088cfL    # 0.79761446
        0x3ff0000000000000L    # 1.0
        0x3fe614bab7a16c77L    # 0.69003044
        0x3fe97f73c8cf9224L    # 0.79680814
        0x3ff0000000000000L    # 1.0
        0x3fe60b5fc50c8f05L    # 0.68888844
        0x3fe978f3bc7ac518L    # 0.79601466
        0x3ff0000000000000L    # 1.0
        0x3fe6022b9e945537L    # 0.68776494
        0x3fe9728df7240e52L    # 0.79523371
        0x3ff0000000000000L    # 1.0
        0x3fe5f91d5d5dff0fL    # 0.68665951
        0x3fe96c41e7d6e95bL    # 0.79446502
        0x3ff0000000000000L    # 1.0
        0x3fe5f0341fed3045L    # 0.68557173
        0x3fe9660ef2e20a4cL    # 0.7937083
        0x3ff0000000000000L    # 1.0
        0x3fe5e76f0a23f04aL    # 0.68450119
        0x3fe95ff4920db41eL    # 0.7929633
        0x3ff0000000000000L    # 1.0
        0x3fe5decd4fff71bbL    # 0.68344751
        0x3fe959f23465625aL    # 0.79222975
        0x3ff0000000000000L    # 1.0
        0x3fe5d64e1ac01fc0L    # 0.68241029
        0x3fe9540753b157fcL    # 0.7915074
        0x3ff0000000000000L    # 1.0
        0x3fe5cdf0ae7e5820L    # 0.68138918
        0x3fe94e3369b9d7feL    # 0.790796
        0x3ff0000000000000L    # 1.0
        0x3fe5c5b43f374d74L    # 0.6803838
        0x3fe94875f5a58911L    # 0.79009531
        0x3ff0000000000000L    # 1.0
        0x3fe5bd981661c13bL    # 0.67939381
        0x3fe942ce8157d95bL    # 0.78940511
        0x3ff0000000000000L    # 1.0
        0x3fe5b59b82d2d8aaL    # 0.67841888
        0x3fe93d3c9155d346L    # 0.78872517
        0x3ff0000000000000L    # 1.0
        0x3fe5adbdc8a2f187L    # 0.67745866
        0x3fe937bfaa24813fL    # 0.78805526
        0x3ff0000000000000L    # 1.0
        0x3fe5a5fe4163f878L    # 0.67651284
        0x3fe93257606418d9L    # 0.78739518
        0x3ff0000000000000L    # 1.0
        0x3fe59e5c4c063dddL    # 0.67558112
        0x3fe92d0343566bf2L    # 0.78674472
        0x3ff0000000000000L    # 1.0
        0x3fe596d7375ee6ebL    # 0.67466317
        0x3fe927c2e79bb01fL    # 0.78610368
        0x3ff0000000000000L    # 1.0
        0x3fe58f6e72796f2dL    # 0.67375872
        0x3fe92295e1d41af5L    # 0.78547186
        0x3ff0000000000000L    # 1.0
        0x3fe5882161a48ab9L    # 0.67286748
        0x3fe91d7bcbfe45c1L    # 0.78484907
        0x3ff0000000000000L    # 1.0
        0x3fe580ef692eeda9L    # 0.67198916
        0x3fe918744018c9d0L    # 0.78423512
        0x3ff0000000000000L    # 1.0
        0x3fe579d7fd82773eL    # 0.6711235
        0x3fe9137ee2df07e3L    # 0.78362984
        0x3ff0000000000000L    # 1.0
        0x3fe572da930906baL    # 0.67027024
        0x3fe90e9b53adfcfeL    # 0.78303305
        0x3ff0000000000000L    # 1.0
        0x3fe56bf698ce17a6L    # 0.66942911
        0x3fe909c931e2a628L    # 0.78244457
        0x3ff0000000000000L    # 1.0
        0x3fe5652b9356b46dL    # 0.66859988
        0x3fe905082cf52b91L    # 0.78186425
        0x3ff0000000000000L    # 1.0
        0x3fe55e78f1ae5898L    # 0.66778228
        0x3fe90057e4428a3eL    # 0.78129191
        0x3ff0000000000000L    # 1.0
        0x3fe557de4316d605L    # 0.6669761
        0x3fe8fbb80742ea60L    # 0.7807274
        0x3ff0000000000000L    # 1.0
        0x3fe5515b06b6d366L    # 0.6661811
        0x3fe8f728456e7427L    # 0.78017057
        0x3ff0000000000000L    # 1.0
        0x3fe54aeec671bedfL    # 0.66539706
        0x3fe8f2a84e3d4fc2L    # 0.77962127
        0x3ff0000000000000L    # 1.0
        0x3fe544990c2b0694L    # 0.66462376
        0x3fe8ee37cbc941a8L    # 0.77907934
        0x3ff0000000000000L    # 1.0
        0x3fe53e5961c618a9L    # 0.66386098
        0x3fe8e9d67847397aL    # 0.77854465
        0x3ff0000000000000L    # 1.0
        0x3fe5382f5be32ab2L    # 0.66310852
        0x3fe8e584032f5f69L    # 0.77801705
        0x3ff0000000000000L    # 1.0
        0x3fe5321a8f227246L    # 0.66236618
        0x3fe8e1402c1506cdL    # 0.77749642
        0x3ff0000000000000L    # 1.0
        0x3fe52c1a8ac5c140L    # 0.66163375
        0x3fe8dd0aa27057d7L    # 0.77698261
        0x3ff0000000000000L    # 1.0
        0x3fe5262ef388785fL    # 0.66091106
        0x3fe8d8e32b330998L    # 0.77647551
        0x3ff0000000000000L    # 1.0
        0x3fe520575e0acd39L    # 0.66019791
        0x3fe8d4c97b33a7f8L    # 0.77597498
        0x3ff0000000000000L    # 1.0
        0x3fe51a9369a9bcd2L    # 0.65949412
        0x3fe8d0bd52058652L    # 0.7754809
        0x3ff0000000000000L    # 1.0
        0x3fe514e2bb20a7ebL    # 0.65879952
        0x3fe8ccbe6f3bf7feL    # 0.77499315
        0x3ff0000000000000L    # 1.0
        0x3fe50f44ec6e27d1L    # 0.65811392
        0x3fe8c8cc926a5056L    # 0.77451161
        0x3ff0000000000000L    # 1.0
        0x3fe509b9a7ac00faL    # 0.65743716
        0x3fe8c4e785e0aa24L    # 0.77403618
        0x3ff0000000000000L    # 1.0
        0x3fe5044096f3f7dfL    # 0.65676908
        0x3fe8c10f03d3f50aL    # 0.77356673
        0x3ff0000000000000L    # 1.0
        0x3fe4fed9645fd0f6L    # 0.65610952
        0x3fe8bd42d6944bd2L    # 0.77310316
        0x3ff0000000000000L    # 1.0
        0x3fe4f983b4aaecfeL    # 0.65545831
        0x3fe8b982c871c946L    # 0.77264537
        0x3ff0000000000000L    # 1.0
        0x3fe4f43f374d7427L    # 0.6548153
        0x3fe8b5ce98ffc0c0L    # 0.77219324
        0x3ff0000000000000L    # 1.0
        0x3fe4ef0ba67c5612L    # 0.65418036
        0x3fe8b2261d4b147bL    # 0.77174669
        0x3ff0000000000000L    # 1.0
        0x3fe4e9e8a6f2f37dL    # 0.65355332
        0x3fe8ae8914e717d2L    # 0.7713056
        0x3ff0000000000000L    # 1.0
        0x3fe4e4d5ed87d851L    # 0.65293404
        0x3fe8aaf74f824946L    # 0.77086988
        0x3ff0000000000000L    # 1.0
        0x3fe4dfd339ce57e7L    # 0.6523224
        0x3fe8a7709ccb275bL    # 0.77043944
        0x3ff0000000000000L    # 1.0
        0x3fe4dae035e036b7L    # 0.65171824
        0x3fe8a3f4cc703095L    # 0.77001419
        0x3ff0000000000000L    # 1.0
        0x3fe4d5fca150c81aL    # 0.65112144
        0x3fe8a083ae1fe375L    # 0.76959404
        0x3ff0000000000000L    # 1.0
        0x3fe4d1283654fbb0L    # 0.65053187
        0x3fe89d1d0c2a5ac7L    # 0.76917889
        0x3ff0000000000000L    # 1.0
        0x3fe4cc62b48024d3L    # 0.64994941
        0x3fe899c0bb9c78c7L    # 0.76876866
        0x3ff0000000000000L    # 1.0
        0x3fe4c7abd0a8cf6dL    # 0.64937392
        0x3fe8966e8c24bbf7L    # 0.76836326
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDeltaE(DDDDDD)D
    .locals 62
    .param p0, "L1"    # D
    .param p2, "a1"    # D
    .param p4, "b1"    # D
    .param p6, "L2"    # D
    .param p8, "a2"    # D
    .param p10, "b2"    # D

    .prologue
    .line 139
    add-double v54, p0, p6

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v20, v54, v56

    .line 140
    .local v20, "Lmean":D
    mul-double v54, p2, p2

    mul-double v56, p4, p4

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 141
    .local v4, "C1":D
    mul-double v54, p8, p8

    mul-double v56, p10, p10

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 142
    .local v8, "C2":D
    add-double v54, v4, v8

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v12, v54, v56

    .line 144
    .local v12, "Cmean":D
    const-wide/high16 v54, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v54

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v54

    const-wide/high16 v56, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v56

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v56

    const-wide/high16 v58, 0x4039000000000000L    # 25.0

    const-wide/high16 v60, 0x401c000000000000L    # 7.0

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v58

    add-double v56, v56, v58

    div-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    sub-double v54, v56, v54

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v16, v54, v56

    .line 145
    .local v16, "G":D
    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v16

    mul-double v34, p2, v54

    .line 146
    .local v34, "a1prime":D
    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v16

    mul-double v36, p8, v54

    .line 148
    .local v36, "a2prime":D
    mul-double v54, v34, v34

    mul-double v56, p4, p4

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 149
    .local v6, "C1prime":D
    mul-double v54, v36, v36

    mul-double v56, p10, p10

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 150
    .local v10, "C2prime":D
    add-double v54, v6, v10

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v14, v54, v56

    .line 152
    .local v14, "Cmeanprime":D
    move-wide/from16 v0, p4

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    .line 153
    move-wide/from16 v0, p4

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v54

    const-wide/16 v58, 0x0

    cmpg-double v54, v54, v58

    if-gez v54, :cond_0

    const/16 v54, 0x1

    :goto_0
    move/from16 v0, v54

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide v58, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v54, v54, v58

    .line 152
    add-double v50, v56, v54

    .line 154
    .local v50, "h1prime":D
    move-wide/from16 v0, p10

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    .line 155
    move-wide/from16 v0, p10

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v54

    const-wide/16 v58, 0x0

    cmpg-double v54, v54, v58

    if-gez v54, :cond_1

    const/16 v54, 0x1

    :goto_1
    move/from16 v0, v54

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide v58, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v54, v54, v58

    .line 154
    add-double v52, v56, v54

    .line 156
    .local v52, "h2prime":D
    sub-double v54, v50, v52

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    const-wide v56, 0x400921fb54442d18L    # Math.PI

    cmpl-double v54, v54, v56

    if-lez v54, :cond_2

    .line 157
    add-double v54, v50, v52

    const-wide v56, 0x401921fb54442d18L    # 6.283185307179586

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v18, v54, v56

    .line 159
    .local v18, "Hmeanprime":D
    :goto_2
    const-wide v54, 0x3fe0c152382d7365L    # 0.5235987755982988

    sub-double v54, v18, v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->cos(D)D

    move-result-wide v54

    const-wide v56, 0x3fc5c28f5c28f5c3L    # 0.17

    mul-double v54, v54, v56

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    sub-double v54, v56, v54

    .line 160
    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    mul-double v56, v56, v18

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    const-wide v58, 0x3fceb851eb851eb8L    # 0.24

    mul-double v56, v56, v58

    .line 159
    add-double v54, v54, v56

    .line 160
    const-wide/high16 v56, 0x4008000000000000L    # 3.0

    mul-double v56, v56, v18

    const-wide v58, 0x3fbacee9f37bebd5L    # 0.10471975511965977

    add-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    const-wide v58, 0x3fd47ae147ae147bL    # 0.32

    mul-double v56, v56, v58

    .line 159
    add-double v54, v54, v56

    .line 161
    const-wide/high16 v56, 0x4010000000000000L    # 4.0

    mul-double v56, v56, v18

    const-wide v58, 0x3ff197c987c952c4L    # 1.0995574287564276

    sub-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    const-wide v58, 0x3fc999999999999aL    # 0.2

    mul-double v56, v56, v58

    .line 159
    sub-double v32, v54, v56

    .line 163
    .local v32, "T":D
    sub-double v54, v50, v52

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    const-wide v56, 0x400921fb54442d18L    # Math.PI

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_3

    sub-double v48, v52, v50

    .line 167
    .local v48, "deltahprime":D
    :goto_3
    sub-double v44, p6, p0

    .line 168
    .local v44, "deltaLprime":D
    sub-double v38, v10, v6

    .line 169
    .local v38, "deltaCprime":D
    mul-double v54, v6, v10

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    mul-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v56, v48, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    mul-double v42, v54, v56

    .line 170
    .local v42, "deltaHprime":D
    const-wide/high16 v54, 0x4049000000000000L    # 50.0

    sub-double v54, v20, v54

    const-wide v56, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v54, v54, v56

    const-wide/high16 v56, 0x4049000000000000L    # 50.0

    sub-double v56, v20, v56

    mul-double v54, v54, v56

    .line 171
    const-wide/high16 v56, 0x4049000000000000L    # 50.0

    sub-double v56, v20, v56

    const-wide/high16 v58, 0x4049000000000000L    # 50.0

    sub-double v58, v20, v58

    mul-double v56, v56, v58

    const-wide/high16 v58, 0x4034000000000000L    # 20.0

    add-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    .line 170
    div-double v54, v54, v56

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v30, v56, v54

    .line 172
    .local v30, "SL":D
    const-wide v54, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double v54, v54, v14

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v26, v56, v54

    .line 173
    .local v26, "SC":D
    const-wide v54, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v54, v54, v14

    mul-double v54, v54, v32

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v28, v56, v54

    .line 176
    .local v28, "SH":D
    const-wide v54, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v54, v54, v18

    const-wide v56, 0x4071300000000000L    # 275.0

    sub-double v54, v54, v56

    const-wide/high16 v56, 0x4039000000000000L    # 25.0

    div-double v54, v54, v56

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    .line 177
    const-wide v56, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v56, v56, v18

    const-wide v58, 0x4071300000000000L    # 275.0

    sub-double v56, v56, v58

    const-wide/high16 v58, 0x4039000000000000L    # 25.0

    div-double v56, v56, v58

    .line 176
    mul-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->exp(D)D

    move-result-wide v54

    .line 175
    const-wide v56, 0x3fe0c152382d7365L    # 0.5235987755982988

    mul-double v46, v56, v54

    .line 179
    .local v46, "deltaTheta":D
    const-wide/high16 v54, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v54

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v54

    const-wide/high16 v56, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v56

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v56

    const-wide/high16 v58, 0x4039000000000000L    # 25.0

    const-wide/high16 v60, 0x401c000000000000L    # 7.0

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v58

    add-double v56, v56, v58

    div-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    .line 178
    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    mul-double v22, v56, v54

    .line 180
    .local v22, "RC":D
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v54, v0

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    mul-double v56, v56, v46

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    mul-double v24, v54, v56

    .line 182
    .local v24, "RT":D
    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    .line 187
    mul-double v54, v54, v30

    div-double v54, v44, v54

    .line 182
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    .line 187
    mul-double v56, v56, v30

    div-double v56, v44, v56

    mul-double v54, v54, v56

    .line 183
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    .line 188
    mul-double v56, v56, v26

    div-double v56, v38, v56

    .line 183
    const-wide/high16 v58, 0x3ff0000000000000L    # 1.0

    .line 188
    mul-double v58, v58, v26

    div-double v58, v38, v58

    mul-double v56, v56, v58

    .line 187
    add-double v54, v54, v56

    .line 184
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    .line 189
    mul-double v56, v56, v28

    div-double v56, v42, v56

    .line 184
    const-wide/high16 v58, 0x3ff0000000000000L    # 1.0

    .line 189
    mul-double v58, v58, v28

    div-double v58, v42, v58

    mul-double v56, v56, v58

    .line 187
    add-double v54, v54, v56

    .line 183
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    .line 190
    mul-double v56, v56, v26

    div-double v56, v38, v56

    mul-double v56, v56, v24

    .line 184
    const-wide/high16 v58, 0x3ff0000000000000L    # 1.0

    .line 190
    mul-double v58, v58, v28

    div-double v58, v42, v58

    mul-double v56, v56, v58

    .line 187
    add-double v54, v54, v56

    .line 186
    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v40

    .line 192
    .local v40, "deltaE":D
    return-wide v40

    .line 153
    .end local v18    # "Hmeanprime":D
    .end local v22    # "RC":D
    .end local v24    # "RT":D
    .end local v26    # "SC":D
    .end local v28    # "SH":D
    .end local v30    # "SL":D
    .end local v32    # "T":D
    .end local v38    # "deltaCprime":D
    .end local v40    # "deltaE":D
    .end local v42    # "deltaHprime":D
    .end local v44    # "deltaLprime":D
    .end local v46    # "deltaTheta":D
    .end local v48    # "deltahprime":D
    .end local v50    # "h1prime":D
    .end local v52    # "h2prime":D
    :cond_0
    const/16 v54, 0x0

    goto/16 :goto_0

    .line 155
    .restart local v50    # "h1prime":D
    :cond_1
    const/16 v54, 0x0

    goto/16 :goto_1

    .line 157
    .restart local v52    # "h2prime":D
    :cond_2
    add-double v54, v50, v52

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v18, v54, v56

    .restart local v18    # "Hmeanprime":D
    goto/16 :goto_2

    .line 164
    .restart local v32    # "T":D
    :cond_3
    cmpg-double v54, v52, v50

    if-gtz v54, :cond_4

    sub-double v54, v52, v50

    const-wide v56, 0x401921fb54442d18L    # 6.283185307179586

    add-double v48, v54, v56

    .restart local v48    # "deltahprime":D
    goto/16 :goto_3

    .line 165
    .end local v48    # "deltahprime":D
    :cond_4
    sub-double v54, v52, v50

    const-wide v56, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v48, v54, v56

    .restart local v48    # "deltahprime":D
    goto/16 :goto_3
.end method

.method public static convertRGBtoLAB(I)[F
    .locals 22
    .param p0, "rgb"    # I

    .prologue
    .line 60
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [F

    .line 70
    .local v13, "lab":[F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    div-float v14, v18, v19

    .line 71
    .local v14, "r":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    div-float v12, v18, v19

    .line 72
    .local v12, "g":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    div-float v7, v18, v19

    .line 75
    .local v7, "b":F
    float-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_0

    .line 76
    const/high16 v18, 0x41400000    # 12.0f

    div-float v14, v14, v18

    .line 80
    :goto_0
    float-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_1

    .line 81
    const/high16 v18, 0x41400000    # 12.0f

    div-float v12, v12, v18

    .line 85
    :goto_1
    float-to-double v0, v7

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_2

    .line 86
    const/high16 v18, 0x41400000    # 12.0f

    div-float v7, v7, v18

    .line 90
    :goto_2
    const v18, 0x3edf4236

    mul-float v18, v18, v14

    const v19, 0x3ec5296a

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3e128582

    mul-float v19, v19, v7

    add-float v3, v18, v19

    .line 91
    .local v3, "X":F
    const v18, 0x3e63d4d6

    mul-float v18, v18, v14

    const v19, 0x3f3785d8

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3d784e3c

    mul-float v19, v19, v7

    add-float v4, v18, v19

    .line 92
    .local v4, "Y":F
    const v18, 0x3c6436f9

    mul-float v18, v18, v14

    const v19, 0x3dc6dacb

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3f36d4dc

    mul-float v19, v19, v7

    add-float v5, v18, v19

    .line 65
    .local v5, "Z":F
    const v18, 0x3f76d730    # 0.964221f

    .line 95
    div-float v15, v3, v18

    .line 66
    .local v15, "xr":F
    const/high16 v18, 0x3f800000    # 1.0f

    .line 96
    div-float v16, v4, v18

    .line 67
    .local v16, "yr":F
    const v18, 0x3f534107

    .line 97
    div-float v17, v5, v18

    .line 62
    .local v17, "zr":F
    const v18, 0x3c111aa7

    .line 99
    cmpl-float v18, v15, v18

    if-lez v18, :cond_3

    .line 100
    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .line 62
    .local v9, "fx":F
    :goto_3
    const v18, 0x3c111aa7

    .line 104
    cmpl-float v18, v16, v18

    if-lez v18, :cond_4

    .line 105
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 62
    .local v10, "fy":F
    :goto_4
    const v18, 0x3c111aa7

    .line 109
    cmpl-float v18, v17, v18

    if-lez v18, :cond_5

    .line 110
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 114
    .local v11, "fz":F
    :goto_5
    const/high16 v18, 0x42e80000    # 116.0f

    mul-float v18, v18, v10

    const/high16 v19, 0x41800000    # 16.0f

    sub-float v2, v18, v19

    .line 115
    .local v2, "Ls":F
    sub-float v18, v9, v10

    const/high16 v19, 0x43fa0000    # 500.0f

    mul-float v6, v19, v18

    .line 116
    .local v6, "as":F
    sub-float v18, v10, v11

    const/high16 v19, 0x43480000    # 200.0f

    mul-float v8, v19, v18

    .line 118
    .local v8, "bs":F
    const v18, 0x40233333    # 2.55f

    mul-float v18, v18, v2

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    const/16 v19, 0x0

    aput v18, v13, v19

    .line 119
    const/high16 v18, 0x3f000000    # 0.5f

    add-float v18, v18, v6

    const/16 v19, 0x1

    aput v18, v13, v19

    .line 120
    const/high16 v18, 0x3f000000    # 0.5f

    add-float v18, v18, v8

    const/16 v19, 0x2

    aput v18, v13, v19

    .line 122
    return-object v13

    .line 78
    .end local v2    # "Ls":F
    .end local v3    # "X":F
    .end local v4    # "Y":F
    .end local v5    # "Z":F
    .end local v6    # "as":F
    .end local v8    # "bs":F
    .end local v9    # "fx":F
    .end local v10    # "fy":F
    .end local v11    # "fz":F
    .end local v15    # "xr":F
    .end local v16    # "yr":F
    .end local v17    # "zr":F
    :cond_0
    float-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    goto/16 :goto_0

    .line 83
    :cond_1
    float-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v12, v0

    goto/16 :goto_1

    .line 88
    :cond_2
    float-to-double v0, v7

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v7, v0

    goto/16 :goto_2

    .line 63
    .restart local v3    # "X":F
    .restart local v4    # "Y":F
    .restart local v5    # "Z":F
    .restart local v15    # "xr":F
    .restart local v16    # "yr":F
    .restart local v17    # "zr":F
    :cond_3
    const v18, 0x4461d2f7

    .line 102
    mul-float v18, v18, v15

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L    # 116.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .restart local v9    # "fx":F
    goto/16 :goto_3

    .line 63
    :cond_4
    const v18, 0x4461d2f7

    .line 107
    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L    # 116.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .restart local v10    # "fy":F
    goto/16 :goto_4

    .line 63
    :cond_5
    const v18, 0x4461d2f7

    .line 112
    mul-float v18, v18, v17

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L    # 116.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .restart local v11    # "fz":F
    goto/16 :goto_5
.end method

.method public static dropAlpha(I)I
    .locals 1
    .param p0, "rgba"    # I

    .prologue
    .line 49
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static findPerceptuallyNearestColor(I[I)I
    .locals 22
    .param p0, "rgb"    # I
    .param p1, "colors"    # [I

    .prologue
    .line 205
    const/16 v20, 0x0

    .line 206
    .local v20, "nearestColor":I
    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 208
    .local v16, "closest":D
    invoke-static/range {p0 .. p0}, Lcyanogenmod/util/ColorUtils;->convertRGBtoLAB(I)[F

    move-result-object v21

    .line 210
    .local v21, "original":[F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_1

    .line 211
    aget v2, p1, v15

    invoke-static {v2}, Lcyanogenmod/util/ColorUtils;->convertRGBtoLAB(I)[F

    move-result-object v14

    .line 212
    .local v14, "cl":[F
    const/4 v2, 0x0

    aget v2, v21, v2

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v4, v21, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget v6, v21, v6

    float-to-double v6, v6

    .line 213
    const/4 v8, 0x0

    aget v8, v14, v8

    float-to-double v8, v8

    const/4 v10, 0x1

    aget v10, v14, v10

    float-to-double v10, v10

    const/4 v12, 0x2

    aget v12, v14, v12

    float-to-double v12, v12

    .line 212
    invoke-static/range {v2 .. v13}, Lcyanogenmod/util/ColorUtils;->calculateDeltaE(DDDDDD)D

    move-result-wide v18

    .line 214
    .local v18, "deltaE":D
    cmpg-double v2, v18, v16

    if-gez v2, :cond_0

    .line 215
    aget v20, p1, v15

    .line 216
    move-wide/from16 v16, v18

    .line 210
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 219
    .end local v14    # "cl":[F
    .end local v18    # "deltaE":D
    :cond_1
    return v20
.end method

.method public static findPerceptuallyNearestSolidColor(I)I
    .locals 1
    .param p0, "rgb"    # I

    .prologue
    .line 232
    sget-object v0, Lcyanogenmod/util/ColorUtils;->SOLID_COLORS:[I

    invoke-static {p0, v0}, Lcyanogenmod/util/ColorUtils;->findPerceptuallyNearestColor(I[I)I

    move-result v0

    return v0
.end method

.method public static generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 12
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 264
    const/high16 v0, -0x1000000

    .line 265
    .local v0, "alertColor":I
    const/4 v1, 0x0

    .line 267
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 268
    return v0

    .line 271
    :cond_0
    instance-of v8, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_1

    move-object v8, p0

    .line 272
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 283
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v1, :cond_6

    .line 284
    invoke-static {v1}, Lcom/android/internal/util/cm/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/util/cm/palette/Palette$Builder;->generate()Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v6

    .line 285
    .local v6, "p":Lcom/android/internal/util/cm/palette/Palette;
    if-nez v6, :cond_2

    .line 286
    return v0

    .line 274
    .end local v6    # "p":Lcom/android/internal/util/cm/palette/Palette;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 275
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 276
    .local v4, "height":I
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 277
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 278
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 276
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 279
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 290
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "height":I
    .end local v7    # "width":I
    .restart local v6    # "p":Lcom/android/internal/util/cm/palette/Palette;
    :cond_2
    invoke-static {v6}, Lcyanogenmod/util/ColorUtils;->getDominantSwatch(Lcom/android/internal/util/cm/palette/Palette;)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v3

    .line 264
    .local v3, "dominantSwatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    const/high16 v5, -0x1000000

    .line 292
    .local v5, "iconColor":I
    if-eqz v3, :cond_3

    .line 293
    invoke-virtual {v3}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result v5

    .line 294
    invoke-static {v5}, Lcyanogenmod/util/ColorUtils;->findPerceptuallyNearestSolidColor(I)I

    move-result v0

    .line 298
    :cond_3
    const/high16 v8, -0x1000000

    if-eq v0, v8, :cond_4

    if-ne v0, v11, :cond_5

    .line 299
    :cond_4
    invoke-virtual {v6, v11}, Lcom/android/internal/util/cm/palette/Palette;->getVibrantColor(I)I

    move-result v5

    .line 300
    invoke-static {v5}, Lcyanogenmod/util/ColorUtils;->findPerceptuallyNearestSolidColor(I)I

    move-result v0

    .line 303
    :cond_5
    instance-of v8, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_6

    .line 304
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    .end local v3    # "dominantSwatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .end local v5    # "iconColor":I
    .end local v6    # "p":Lcom/android/internal/util/cm/palette/Palette;
    :cond_6
    return v0
.end method

.method public static getDominantSwatch(Lcom/android/internal/util/cm/palette/Palette;)Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 2
    .param p0, "palette"    # Lcom/android/internal/util/cm/palette/Palette;

    .prologue
    const/4 v1, 0x0

    .line 242
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    return-object v1

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcyanogenmod/util/ColorUtils$1;

    invoke-direct {v1}, Lcyanogenmod/util/ColorUtils$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method private static interp(IF)F
    .locals 4
    .param p0, "i"    # I
    .param p1, "a"    # F

    .prologue
    .line 327
    sget-object v0, Lcyanogenmod/util/ColorUtils;->sColorTable:[D

    aget-wide v0, v0, p0

    double-to-float v0, v0

    sget-object v1, Lcyanogenmod/util/ColorUtils;->sColorTable:[D

    add-int/lit8 v2, p0, 0x3

    aget-wide v2, v1, v2

    double-to-float v1, v2

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static temperatureToRGB(I)[F
    .locals 6
    .param p0, "degreesK"    # I

    .prologue
    .line 319
    const/16 v3, 0x3e8

    const/16 v4, 0x4e20

    invoke-static {p0, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 320
    .local v2, "k":I
    rem-int/lit8 v3, v2, 0x64

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v0, v3, v4

    .line 321
    .local v0, "a":F
    add-int/lit16 v3, v2, -0x3e8

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v1, v3, 0x3

    .line 323
    .local v1, "i":I
    const/4 v3, 0x3

    new-array v3, v3, [F

    invoke-static {v1, v0}, Lcyanogenmod/util/ColorUtils;->interp(IF)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4, v0}, Lcyanogenmod/util/ColorUtils;->interp(IF)F

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    add-int/lit8 v4, v1, 0x2

    invoke-static {v4, v0}, Lcyanogenmod/util/ColorUtils;->interp(IF)F

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    return-object v3
.end method
