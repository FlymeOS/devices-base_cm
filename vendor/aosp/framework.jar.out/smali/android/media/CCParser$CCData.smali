.class Landroid/media/CCParser$CCData;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCData"
.end annotation


# static fields
.field private static final mCtrlCodeMap:[Ljava/lang/String;

.field private static final mProtugueseCharMap:[Ljava/lang/String;

.field private static final mSpanishCharMap:[Ljava/lang/String;

.field private static final mSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method static synthetic -wrap0(Landroid/media/CCParser$CCData;)Z
    .locals 1

    invoke-direct {p0}, Landroid/media/CCParser$CCData;->isExtendedChar()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 763
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 764
    const-string/jumbo v1, "RCL"

    aput-object v1, v0, v3

    const-string/jumbo v1, "BS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "AOF"

    aput-object v1, v0, v5

    const-string/jumbo v1, "AON"

    aput-object v1, v0, v6

    .line 765
    const-string/jumbo v1, "DER"

    aput-object v1, v0, v7

    const-string/jumbo v1, "RU2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "RU3"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "RU4"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 766
    const-string/jumbo v1, "FON"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "RDC"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "TR"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "RTD"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 767
    const-string/jumbo v1, "EDM"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "CR"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "ENM"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "EOC"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 763
    sput-object v0, Landroid/media/CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    .line 770
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 771
    const-string/jumbo v1, "\u00ae"

    aput-object v1, v0, v3

    .line 772
    const-string/jumbo v1, "\u00b0"

    aput-object v1, v0, v4

    .line 773
    const-string/jumbo v1, "\u00bd"

    aput-object v1, v0, v5

    .line 774
    const-string/jumbo v1, "\u00bf"

    aput-object v1, v0, v6

    .line 775
    const-string/jumbo v1, "\u2122"

    aput-object v1, v0, v7

    .line 776
    const-string/jumbo v1, "\u00a2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 777
    const-string/jumbo v1, "\u00a3"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 778
    const-string/jumbo v1, "\u266a"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 779
    const-string/jumbo v1, "\u00e0"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 780
    const-string/jumbo v1, "\u00a0"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 781
    const-string/jumbo v1, "\u00e8"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 782
    const-string/jumbo v1, "\u00e2"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 783
    const-string/jumbo v1, "\u00ea"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 784
    const-string/jumbo v1, "\u00ee"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 785
    const-string/jumbo v1, "\u00f4"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 786
    const-string/jumbo v1, "\u00fb"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 770
    sput-object v0, Landroid/media/CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    .line 789
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 791
    const-string/jumbo v1, "\u00c1"

    aput-object v1, v0, v3

    .line 792
    const-string/jumbo v1, "\u00c9"

    aput-object v1, v0, v4

    .line 793
    const-string/jumbo v1, "\u00d3"

    aput-object v1, v0, v5

    .line 794
    const-string/jumbo v1, "\u00da"

    aput-object v1, v0, v6

    .line 795
    const-string/jumbo v1, "\u00dc"

    aput-object v1, v0, v7

    .line 796
    const-string/jumbo v1, "\u00fc"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 797
    const-string/jumbo v1, "\u2018"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 798
    const-string/jumbo v1, "\u00a1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 799
    const-string/jumbo v1, "*"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 800
    const-string/jumbo v1, "\'"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 801
    const-string/jumbo v1, "\u2014"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 802
    const-string/jumbo v1, "\u00a9"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 803
    const-string/jumbo v1, "\u2120"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 804
    const-string/jumbo v1, "\u2022"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 805
    const-string/jumbo v1, "\u201c"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 806
    const-string/jumbo v1, "\u201d"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 808
    const-string/jumbo v1, "\u00c0"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 809
    const-string/jumbo v1, "\u00c2"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 810
    const-string/jumbo v1, "\u00c7"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 811
    const-string/jumbo v1, "\u00c8"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 812
    const-string/jumbo v1, "\u00ca"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 813
    const-string/jumbo v1, "\u00cb"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 814
    const-string/jumbo v1, "\u00eb"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 815
    const-string/jumbo v1, "\u00ce"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 816
    const-string/jumbo v1, "\u00cf"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 817
    const-string/jumbo v1, "\u00ef"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 818
    const-string/jumbo v1, "\u00d4"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 819
    const-string/jumbo v1, "\u00d9"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 820
    const-string/jumbo v1, "\u00f9"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 821
    const-string/jumbo v1, "\u00db"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 822
    const-string/jumbo v1, "\u00ab"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 823
    const-string/jumbo v1, "\u00bb"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 789
    sput-object v0, Landroid/media/CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    .line 826
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 828
    const-string/jumbo v1, "\u00c3"

    aput-object v1, v0, v3

    .line 829
    const-string/jumbo v1, "\u00e3"

    aput-object v1, v0, v4

    .line 830
    const-string/jumbo v1, "\u00cd"

    aput-object v1, v0, v5

    .line 831
    const-string/jumbo v1, "\u00cc"

    aput-object v1, v0, v6

    .line 832
    const-string/jumbo v1, "\u00ec"

    aput-object v1, v0, v7

    .line 833
    const-string/jumbo v1, "\u00d2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 834
    const-string/jumbo v1, "\u00f2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 835
    const-string/jumbo v1, "\u00d5"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 836
    const-string/jumbo v1, "\u00f5"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 837
    const-string/jumbo v1, "{"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 838
    const-string/jumbo v1, "}"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 839
    const-string/jumbo v1, "\\"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 840
    const-string/jumbo v1, "^"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 841
    const-string/jumbo v1, "_"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 842
    const-string/jumbo v1, "|"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 843
    const-string/jumbo v1, "~"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 845
    const-string/jumbo v1, "\u00c4"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 846
    const-string/jumbo v1, "\u00e4"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 847
    const-string/jumbo v1, "\u00d6"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 848
    const-string/jumbo v1, "\u00f6"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 849
    const-string/jumbo v1, "\u00df"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 850
    const-string/jumbo v1, "\u00a5"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 851
    const-string/jumbo v1, "\u00a4"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 852
    const-string/jumbo v1, "\u2502"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 853
    const-string/jumbo v1, "\u00c5"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 854
    const-string/jumbo v1, "\u00e5"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 855
    const-string/jumbo v1, "\u00d8"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 856
    const-string/jumbo v1, "\u00f8"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 857
    const-string/jumbo v1, "\u250c"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 858
    const-string/jumbo v1, "\u2510"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 859
    const-string/jumbo v1, "\u2514"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 860
    const-string/jumbo v1, "\u2518"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 826
    sput-object v0, Landroid/media/CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    .line 758
    return-void
.end method

.method constructor <init>(BBB)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "data1"    # B
    .param p3, "data2"    # B

    .prologue
    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput-byte p1, p0, Landroid/media/CCParser$CCData;->mType:B

    .line 878
    iput-byte p2, p0, Landroid/media/CCParser$CCData;->mData1:B

    .line 879
    iput-byte p3, p0, Landroid/media/CCParser$CCData;->mData2:B

    .line 876
    return-void
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "ctrlCode"    # I

    .prologue
    .line 936
    sget-object v0, Landroid/media/CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x20

    aget-object v0, v0, v1

    return-object v0
.end method

.method static fromByteArray([B)[Landroid/media/CCParser$CCData;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 864
    array-length v2, p0

    div-int/lit8 v2, v2, 0x3

    new-array v0, v2, [Landroid/media/CCParser$CCData;

    .line 866
    .local v0, "ccData":[Landroid/media/CCParser$CCData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 867
    new-instance v2, Landroid/media/CCParser$CCData;

    .line 868
    mul-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    .line 869
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    .line 870
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    .line 867
    invoke-direct {v2, v3, v4, v5}, Landroid/media/CCParser$CCData;-><init>(BBB)V

    aput-object v2, v0, v1

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    :cond_0
    return-object v0
.end method

.method private getBasicChar(B)C
    .locals 1
    .param p1, "data"    # B

    .prologue
    .line 957
    sparse-switch p1, :sswitch_data_0

    .line 968
    int-to-char v0, p1

    .line 970
    :goto_0
    return v0

    .line 958
    :sswitch_0
    const/16 v0, 0xe1

    .local v0, "c":C
    goto :goto_0

    .line 959
    .end local v0    # "c":C
    :sswitch_1
    const/16 v0, 0xe9

    .restart local v0    # "c":C
    goto :goto_0

    .line 960
    .end local v0    # "c":C
    :sswitch_2
    const/16 v0, 0xed

    .restart local v0    # "c":C
    goto :goto_0

    .line 961
    .end local v0    # "c":C
    :sswitch_3
    const/16 v0, 0xf3

    .restart local v0    # "c":C
    goto :goto_0

    .line 962
    .end local v0    # "c":C
    :sswitch_4
    const/16 v0, 0xfa

    .restart local v0    # "c":C
    goto :goto_0

    .line 963
    .end local v0    # "c":C
    :sswitch_5
    const/16 v0, 0xe7

    .restart local v0    # "c":C
    goto :goto_0

    .line 964
    .end local v0    # "c":C
    :sswitch_6
    const/16 v0, 0xf7

    .restart local v0    # "c":C
    goto :goto_0

    .line 965
    .end local v0    # "c":C
    :sswitch_7
    const/16 v0, 0xd1

    .restart local v0    # "c":C
    goto :goto_0

    .line 966
    .end local v0    # "c":C
    :sswitch_8
    const/16 v0, 0xf1

    .restart local v0    # "c":C
    goto :goto_0

    .line 967
    .end local v0    # "c":C
    :sswitch_9
    const/16 v0, 0x2588

    .restart local v0    # "c":C
    goto :goto_0

    .line 957
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x5c -> :sswitch_1
        0x5e -> :sswitch_2
        0x5f -> :sswitch_3
        0x60 -> :sswitch_4
        0x7b -> :sswitch_5
        0x7c -> :sswitch_6
        0x7d -> :sswitch_7
        0x7e -> :sswitch_8
        0x7f -> :sswitch_9
    .end sparse-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x7f

    const/16 v2, 0x20

    .line 974
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    if-lt v1, v2, :cond_1

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    if-gt v1, v3, :cond_1

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 976
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    invoke-direct {p0, v1}, Landroid/media/CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 977
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-lt v1, v2, :cond_0

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-gt v1, v3, :cond_0

    .line 978
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-direct {p0, v1}, Landroid/media/CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 980
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 983
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getExtendedChar()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3f

    const/16 v2, 0x20

    .line 996
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 997
    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-gt v0, v3, :cond_1

    .line 999
    sget-object v0, Landroid/media/CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x20

    aget-object v0, v0, v1

    return-object v0

    .line 1000
    :cond_1
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_3

    .line 1001
    :cond_2
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_3

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-gt v0, v3, :cond_3

    .line 1003
    sget-object v0, Landroid/media/CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x20

    aget-object v0, v0, v1

    return-object v0

    .line 1006
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 987
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 988
    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    .line 989
    sget-object v0, Landroid/media/CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x30

    aget-object v0, v0, v1

    return-object v0

    .line 992
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBasicChar()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 940
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isExtendedChar()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 949
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_2

    .line 951
    :cond_0
    :goto_0
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 949
    :cond_1
    return v0

    .line 950
    :cond_2
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method private isSpecialChar()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 944
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    .line 945
    :cond_0
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 944
    :cond_1
    return v0
.end method


# virtual methods
.method getCtrlCode()I
    .locals 2

    .prologue
    .line 883
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 884
    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    .line 885
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    return v0

    .line 887
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->getBasicChars()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 925
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    move-result-object v0

    .line 927
    if-nez v0, :cond_0

    .line 928
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    move-result-object v0

    .line 932
    :cond_0
    return-object v0
.end method

.method getMidRow()Landroid/media/CCParser$StyleCode;
    .locals 2

    .prologue
    .line 893
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 894
    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    .line 895
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v0}, Landroid/media/CCParser$StyleCode;->fromByte(B)Landroid/media/CCParser$StyleCode;

    move-result-object v0

    return-object v0

    .line 897
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getPAC()Landroid/media/CCParser$PAC;
    .locals 2

    .prologue
    .line 901
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 902
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 903
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    .line 904
    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v0, v1}, Landroid/media/CCParser$PAC;->fromBytes(BB)Landroid/media/CCParser$PAC;

    move-result-object v0

    return-object v0

    .line 906
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTabOffset()I
    .locals 2

    .prologue
    .line 910
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 911
    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x23

    if-gt v0, v1, :cond_1

    .line 912
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x3

    return v0

    .line 914
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isDisplayableChar()Z
    .locals 1

    .prologue
    .line 918
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->isBasicChar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/CCParser$CCData;->isSpecialChar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/CCParser$CCData;->isExtendedChar()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1013
    iget-byte v4, p0, Landroid/media/CCParser$CCData;->mData1:B

    if-ge v4, v5, :cond_0

    iget-byte v4, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-ge v4, v5, :cond_0

    .line 1015
    const-string/jumbo v4, "[%d]Null: %02x %02x"

    new-array v5, v10, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1018
    :cond_0
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getCtrlCode()I

    move-result v0

    .line 1019
    .local v0, "ctrlCode":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 1020
    const-string/jumbo v4, "[%d]%s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1023
    :cond_1
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getTabOffset()I

    move-result v3

    .line 1024
    .local v3, "tabOffset":I
    if-lez v3, :cond_2

    .line 1025
    const-string/jumbo v4, "[%d]Tab%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1028
    :cond_2
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getPAC()Landroid/media/CCParser$PAC;

    move-result-object v2

    .line 1029
    .local v2, "pac":Landroid/media/CCParser$PAC;
    if-eqz v2, :cond_3

    .line 1030
    const-string/jumbo v4, "[%d]PAC: %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Landroid/media/CCParser$PAC;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1033
    :cond_3
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getMidRow()Landroid/media/CCParser$StyleCode;

    move-result-object v1

    .line 1034
    .local v1, "m":Landroid/media/CCParser$StyleCode;
    if-eqz v1, :cond_4

    .line 1035
    const-string/jumbo v4, "[%d]Mid-row: %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1}, Landroid/media/CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1038
    :cond_4
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->isDisplayableChar()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1039
    const-string/jumbo v4, "[%d]Displayable: %s (%02x %02x)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 1040
    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v10

    .line 1039
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1043
    :cond_5
    const-string/jumbo v4, "[%d]Invalid: %02x %02x"

    new-array v5, v10, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
