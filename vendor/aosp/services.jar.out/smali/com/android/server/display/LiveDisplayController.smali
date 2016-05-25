.class public Lcom/android/server/display/LiveDisplayController;
.super Ljava/lang/Object;
.source "LiveDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;,
        Lcom/android/server/display/LiveDisplayController$SettingsObserver;
    }
.end annotation


# static fields
.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_DAY:I = 0x4

.field public static final MODE_NIGHT:I = 0x1

.field public static final MODE_OFF:I = 0x0

.field public static final MODE_OUTDOOR:I = 0x3

.field private static final MSG_UPDATE_LIVE_DISPLAY:I = 0x1

.field private static final OFF_TEMPERATURE:I = 0x1964

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x36ee80L

.field private static final sColorTable:[D


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mColorAdjustment:[F

.field private mColorEnhancement:Z

.field private mColorTemperature:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentLux:F

.field private mDayTemperature:I

.field private mDefaultDayTemperature:I

.field private mDefaultNightTemperature:I

.field private mDefaultOutdoorLux:I

.field private final mHandler:Landroid/os/Handler;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHintCounter:I

.field private mInitialized:Z

.field private mLowPerformance:Z

.field private mLowPower:Z

.field private mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mMode:I

.field private mNightTemperature:I

.field private mObserver:Lcom/android/server/display/LiveDisplayController$SettingsObserver;

.field private mOutdoorMode:Z

.field private final mRGB:[F

.field private mSunset:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUseColorEnhancement:Z

.field private mUseLowPower:Z

.field private mUseOutdoorMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 629
    const/16 v0, 0x240

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/LiveDisplayController;->sColorTable:[D

    return-void

    :array_0
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

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x1964

    iput v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    .line 89
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    .line 90
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    .line 93
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mSunset:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mInitialized:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    .line 109
    new-instance v0, Lcom/android/server/display/LiveDisplayController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/LiveDisplayController$1;-><init>(Lcom/android/server/display/LiveDisplayController;)V

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 565
    new-instance v0, Lcom/android/server/display/LiveDisplayController$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/LiveDisplayController$3;-><init>(Lcom/android/server/display/LiveDisplayController;)V

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 119
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;-><init>(Lcom/android/server/display/LiveDisplayController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    .line 121
    return-void

    .line 89
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 90
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/server/display/LiveDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/LiveDisplayController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;
    .param p1, "x1"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->updateColorEnhancement(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/LiveDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/display/LiveDisplayController;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;
    .param p1, "x1"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->updateUserHint(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/LiveDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/LiveDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/LiveDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/LiveDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/LiveDisplayController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/LiveDisplayController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/LiveDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/display/LiveDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/LiveDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->setDisplayTemperature(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/LiveDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mInitialized:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/LiveDisplayController;)Lcom/android/server/twilight/TwilightManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;
    .param p1, "x1"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->updateColorTemperature(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LiveDisplayController;
    .param p1, "x1"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->updateOutdoorMode(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method private static adj(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "sunset"    # J
    .param p4, "sunrise"    # J

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/16 v6, 0x0

    const v4, 0x4a5bba00    # 3600000.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 452
    cmp-long v2, p2, v6

    if-ltz v2, :cond_0

    cmp-long v2, p4, v6

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 467
    :cond_1
    :goto_0
    return v0

    .line 457
    :cond_2
    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 458
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 462
    :cond_3
    sub-long v2, p4, v8

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 463
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private getTwilightK(Lcom/android/server/twilight/TwilightState;)I
    .locals 8
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 478
    const/high16 v6, 0x3f800000    # 1.0f

    .line 480
    .local v6, "adjustment":F
    if-eqz p1, :cond_0

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 482
    .local v0, "now":J
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/LiveDisplayController;->adj(JJJ)F

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/LiveDisplayController;->adj(JJJ)F

    move-result v2

    mul-float v6, v7, v2

    .line 486
    .end local v0    # "now":J
    :cond_0
    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method private static interp(IF)F
    .locals 4
    .param p0, "i"    # I
    .param p1, "a"    # F

    .prologue
    .line 439
    sget-object v0, Lcom/android/server/display/LiveDisplayController;->sColorTable:[D

    aget-wide v0, v0, p0

    double-to-float v0, v0

    sget-object v1, Lcom/android/server/display/LiveDisplayController;->sColorTable:[D

    add-int/lit8 v2, p0, 0x3

    aget-wide v2, v1, v2

    double-to-float v1, v2

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private saveUserHint(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 508
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    if-ne v0, p1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "live_display_hinted"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 515
    iput p1, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    goto :goto_0
.end method

.method private static screenRefresh()V
    .locals 6

    .prologue
    .line 495
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 496
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 498
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v1

    .line 503
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "LiveDisplay"

    const-string v4, "Failed to refresh screen"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized setDisplayTemperature(I)V
    .locals 10
    .param p1, "temperature"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 289
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    .line 291
    invoke-static {p1}, Lcom/android/server/display/LiveDisplayController;->temperatureToRGB(I)[F

    move-result-object v3

    .line 293
    .local v3, "rgb":[F
    iget-boolean v4, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-nez v4, :cond_0

    .line 294
    const/4 v4, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 295
    const/4 v4, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 296
    const/4 v4, 0x2

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 299
    :cond_0
    const/4 v4, 0x0

    aget v4, v3, v4

    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    const/4 v4, 0x1

    aget v4, v3, v4

    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    const/4 v4, 0x2

    aget v4, v3, v4

    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    const/4 v6, 0x2

    aget v5, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 343
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 306
    const-string v4, "LiveDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust display temperature to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "K [r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " g="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " b="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "live_display_color_matrix"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 316
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationMax()I

    move-result v2

    .line 317
    .local v2, "max":I
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, v3, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayColorCalibration([I)Z

    .line 322
    invoke-static {}, Lcom/android/server/display/LiveDisplayController;->screenRefresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 289
    .end local v2    # "max":I
    .end local v3    # "rgb":[F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 324
    .restart local v3    # "rgb":[F
    :cond_2
    const/4 v1, 0x0

    .line 325
    .local v1, "colorMatrixStr":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    aget v4, v3, v4

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    const/4 v4, 0x1

    aget v4, v3, v4

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    const/4 v4, 0x2

    aget v4, v3, v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_4

    .line 326
    :cond_3
    const/16 v4, 0x10

    new-array v0, v4, [Ljava/lang/Float;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const/4 v5, 0x2

    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    .line 331
    .local v0, "colorMatrix":[Ljava/lang/Float;
    const-string v4, " "

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .end local v0    # "colorMatrix":[Ljava/lang/Float;
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "live_display_color_matrix"

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 341
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->applyAdjustments(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static temperatureToRGB(I)[F
    .locals 6
    .param p0, "degreesK"    # I

    .prologue
    .line 431
    const/16 v3, 0x3e8

    const/16 v4, 0x4e20

    invoke-static {p0, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 432
    .local v2, "k":I
    rem-int/lit8 v3, v2, 0x64

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v0, v3, v4

    .line 433
    .local v0, "a":F
    add-int/lit16 v3, v2, -0x3e8

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v1, v3, 0x3

    .line 435
    .local v1, "i":I
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-static {v1, v0}, Lcom/android/server/display/LiveDisplayController;->interp(IF)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5, v0}, Lcom/android/server/display/LiveDisplayController;->interp(IF)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    add-int/lit8 v5, v1, 0x2

    invoke-static {v5, v0}, Lcom/android/server/display/LiveDisplayController;->interp(IF)F

    move-result v5

    aput v5, v3, v4

    return-object v3
.end method

.method private declared-synchronized updateColorEnhancement(Lcom/android/server/twilight/TwilightState;)V
    .locals 8
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 379
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/LiveDisplayController;->mUseColorEnhancement:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 398
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 383
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_color_enhance"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_3

    move v1, v0

    .line 388
    .local v1, "value":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-eq v3, v0, :cond_4

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-ne v3, v7, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v3

    if-nez v3, :cond_4

    .line 392
    .local v0, "enabled":Z
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mColorEnhancement:Z

    if-eq v0, v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 397
    iput-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorEnhancement:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    .end local v0    # "enabled":Z
    .end local v1    # "value":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    move v1, v2

    .line 383
    goto :goto_1

    .restart local v1    # "value":Z
    :cond_4
    move v0, v2

    .line 388
    goto :goto_2
.end method

.method private declared-synchronized updateColorTemperature(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 265
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    .line 266
    .local v0, "temperature":I
    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-eqz v1, :cond_3

    .line 267
    :cond_0
    const/16 v0, 0x1964

    .line 274
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 277
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 278
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 279
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/server/display/LiveDisplayController$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/LiveDisplayController$2;-><init>(Lcom/android/server/display/LiveDisplayController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 268
    :cond_3
    :try_start_1
    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-ne v1, v2, :cond_4

    .line 269
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    goto :goto_0

    .line 270
    :cond_4
    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-ne v1, v3, :cond_1

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->getTwilightK(Lcom/android/server/twilight/TwilightState;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 265
    .end local v0    # "temperature":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updateLowPowerMode()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 404
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/LiveDisplayController;->mUseLowPower:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 421
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_low_power"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_2

    move v1, v0

    .line 413
    .local v1, "value":Z
    :goto_1
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    iget v4, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultOutdoorLux:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 415
    .local v0, "enabled":Z
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mLowPower:Z

    if-eq v0, v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 420
    iput-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mLowPower:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "enabled":Z
    .end local v1    # "value":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    move v1, v2

    .line 408
    goto :goto_1

    .restart local v1    # "value":Z
    :cond_3
    move v0, v2

    .line 413
    goto :goto_2
.end method

.method private declared-synchronized updateOutdoorMode(Lcom/android/server/twilight/TwilightState;)V
    .locals 7
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 352
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/LiveDisplayController;->mUseOutdoorMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 373
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 356
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_auto_outdoor_mode"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_3

    move v1, v0

    .line 361
    .local v1, "value":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    iget v4, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultOutdoorLux:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 367
    .local v0, "enabled":Z
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mOutdoorMode:Z

    if-eq v0, v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v3, 0x100

    invoke-virtual {v2, v3, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 372
    iput-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mOutdoorMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    .end local v0    # "enabled":Z
    .end local v1    # "value":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    move v1, v2

    .line 356
    goto :goto_1

    .restart local v1    # "value":Z
    :cond_4
    move v0, v2

    .line 361
    goto :goto_2
.end method

.method private updateSettings()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_temperature_day"

    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultDayTemperature:I

    invoke-static {v3, v4, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    .line 176
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_temperature_night"

    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultNightTemperature:I

    invoke-static {v3, v4, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    .line 180
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_temperature_mode"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    .line 186
    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-eqz v3, :cond_0

    .line 187
    invoke-direct {p0, v7}, Lcom/android/server/display/LiveDisplayController;->saveUserHint(I)V

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_color_adjustment"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "colorAdjustmentTemp":Ljava/lang/String;
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 196
    .local v0, "colorAdjustment":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 197
    :cond_1
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    .end local v0    # "colorAdjustment":[Ljava/lang/String;
    const-string v3, "1.0"

    aput-object v3, v0, v6

    const-string v3, "1.0"

    aput-object v3, v0, v7

    const-string v3, "1.0"

    aput-object v3, v0, v9

    .line 200
    .restart local v0    # "colorAdjustment":[Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v4

    .line 201
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v4

    .line 202
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_1
    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    invoke-virtual {p0, v3}, Lcom/android/server/display/LiveDisplayController;->updateLiveDisplay(F)V

    .line 211
    return-void

    .line 194
    .end local v0    # "colorAdjustment":[Ljava/lang/String;
    :cond_3
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    .restart local v0    # "colorAdjustment":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "LiveDisplay"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aput v10, v3, v6

    .line 206
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aput v10, v3, v7

    .line 207
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aput v10, v3, v9

    goto :goto_1
.end method

.method private updateUserHint(Lcom/android/server/twilight/TwilightState;)V
    .locals 10
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const v9, 0x10400cd

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 529
    if-eqz p1, :cond_0

    iget v7, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    if-ne v7, v5, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/display/LiveDisplayController;->mSunset:Z

    if-nez v7, :cond_3

    move v4, v5

    .line 533
    .local v4, "transition":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/display/LiveDisplayController;->mSunset:Z

    .line 534
    if-eqz v4, :cond_0

    .line 538
    iget v7, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    if-gtz v7, :cond_2

    .line 539
    iget v7, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    .line 540
    iget v7, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    invoke-direct {p0, v7}, Lcom/android/server/display/LiveDisplayController;->saveUserHint(I)V

    .line 542
    :cond_2
    iget v7, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    if-nez v7, :cond_0

    .line 544
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.settings.LIVEDISPLAY_SETTINGS"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v6, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 547
    .local v3, "result":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10400c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x1080370

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v8, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 557
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 559
    .local v2, "nm":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 561
    invoke-direct {p0, v5}, Lcom/android/server/display/LiveDisplayController;->saveUserHint(I)V

    goto/16 :goto_0

    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "nm":Landroid/app/NotificationManager;
    .end local v3    # "result":Landroid/app/PendingIntent;
    .end local v4    # "transition":Z
    :cond_3
    move v4, v6

    .line 532
    goto/16 :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 606
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 607
    const-string v0, "LiveDisplay Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 611
    const-string v0, "LiveDisplay Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-eqz v0, :cond_0

    const-string v0, "disabled in powersave mode"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSunset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mSunset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorAdjustment=[r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRGB=[r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mOutdoorMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorEnhancement:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mUseLowPower:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mLowPower:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    return-void

    .line 612
    :cond_0
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 618
    :cond_1
    const-string v0, "N/A"

    goto :goto_1

    .line 619
    :cond_2
    const-string v0, "N/A"

    goto :goto_2

    .line 620
    :cond_3
    const-string v0, "N/A"

    goto :goto_3
.end method

.method systemReady()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 124
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 126
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultDayTemperature:I

    .line 128
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultNightTemperature:I

    .line 130
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultOutdoorLux:I

    .line 135
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "live_display_hinted"

    const/4 v3, -0x3

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    .line 140
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseOutdoorMode:Z

    .line 143
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v5}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseLowPower:Z

    .line 145
    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseLowPower:Z

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v5}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPower:Z

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseColorEnhancement:Z

    .line 151
    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseColorEnhancement:Z

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorEnhancement:Z

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/LiveDisplayController;->updateSettings()V

    .line 158
    new-instance v1, Lcom/android/server/display/LiveDisplayController$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/display/LiveDisplayController$SettingsObserver;-><init>(Lcom/android/server/display/LiveDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mObserver:Lcom/android/server/display/LiveDisplayController$SettingsObserver;

    .line 159
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mObserver:Lcom/android/server/display/LiveDisplayController$SettingsObserver;

    invoke-virtual {v1, v5}, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->register(Z)V

    .line 161
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 162
    .local v0, "pmi":Landroid/os/PowerManagerInternal;
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 163
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    .line 165
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    iput-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 166
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 168
    iput-boolean v5, p0, Lcom/android/server/display/LiveDisplayController;->mInitialized:Z

    .line 169
    return-void
.end method

.method public updateLiveDisplay()V
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/LiveDisplayController;->updateLiveDisplay(F)V

    .line 256
    return-void
.end method

.method declared-synchronized updateLiveDisplay(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    .line 260
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
