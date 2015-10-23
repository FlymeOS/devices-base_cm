.class public Landroid/net/wifi/WifiEapSimInfo;
.super Ljava/lang/Object;
.source "WifiEapSimInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiEapSimInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final MAX_NUM_OF_SIMS_SUPPORTED:I = 0x4

.field private static final NUM_OF_SIMS_STR:Ljava/lang/String; = "no_of_sims="

.field public static final SIM_2G:I = 0x1

.field public static final SIM_3G:I = 0x3

.field private static final SIM_FOUR_TYPE_STR:Ljava/lang/String; = "sim4="

.field private static final SIM_ONE_TYPE_STR:Ljava/lang/String; = "sim1="

.field private static final SIM_THREE_TYPE_STR:Ljava/lang/String; = "sim3="

.field private static final SIM_TWO_TYPE_STR:Ljava/lang/String; = "sim2="

.field public static final SIM_UNSUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiEapSimInfo"

.field public static final m2GSupportedTypes:[Ljava/lang/String;

.field public static final m3GSupportedTypes:[Ljava/lang/String;


# instance fields
.field public mNumOfSims:I

.field public mSimTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SIM"

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiEapSimInfo;->m2GSupportedTypes:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SIM"

    aput-object v1, v0, v2

    const-string v1, "AKA"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiEapSimInfo;->m3GSupportedTypes:[Ljava/lang/String;

    .line 165
    new-instance v0, Landroid/net/wifi/WifiEapSimInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEapSimInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiEapSimInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEapSimInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WifiEapSimInfo;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget v0, p1, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    iput v0, p0, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    .line 87
    iget-object v0, p1, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    .line 89
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    .line 98
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "sims":[Ljava/lang/String;
    const/4 v4, -0x1

    .line 101
    .local v4, "mSimInfo":I
    array-length v7, v6

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    array-length v7, v6

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    .line 102
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 104
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v5, v0, v2

    .line 105
    .local v5, "sim":Ljava/lang/String;
    const-string/jumbo v7, "no_of_sims="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    :try_start_0
    const-string/jumbo v7, "no_of_sims="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    goto :goto_1

    .line 112
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string/jumbo v7, "sim1="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 114
    :try_start_1
    const-string/jumbo v7, "sim1="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 119
    :goto_2
    iget-object v7, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_2

    .line 120
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string/jumbo v7, "sim2="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 122
    :try_start_2
    const-string/jumbo v7, "sim2="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 127
    :goto_3
    iget-object v7, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :catch_2
    move-exception v1

    .line 125
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_3

    .line 128
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string/jumbo v7, "sim3="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 130
    :try_start_3
    const-string/jumbo v7, "sim3="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    .line 135
    :goto_4
    iget-object v7, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :catch_3
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_4

    .line 136
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string/jumbo v7, "sim4="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 138
    :try_start_4
    const-string/jumbo v7, "sim4="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    .line 143
    :goto_5
    iget-object v7, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 140
    :catch_4
    move-exception v1

    .line 141
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_5

    .line 145
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 148
    .end local v5    # "sim":Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget v2, p0, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v2, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v2, p0, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 160
    .local v1, "mInteger":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 162
    .end local v1    # "mInteger":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
