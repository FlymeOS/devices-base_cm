.class public final Landroid/provider/MzMediaStore;
.super Ljava/lang/Object;
.source "MzMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzMediaStore$MediaColumns;,
        Landroid/provider/MzMediaStore$Audio;
    }
.end annotation


# static fields
.field public static final EXTERNAL_DISK_PATH:Ljava/lang/String; = "/data/system/scsi"

.field private static final TAG:Ljava/lang/String; = "MzMediaStore"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method static synthetic -wrap0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/provider/MzMediaStore;->getLanguageCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLanguageCountry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 165
    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v3, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const-string/jumbo v3, "cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    const-string/jumbo v2, "zh-CN"

    .line 174
    :cond_0
    :goto_0
    return-object v2

    .line 170
    :cond_1
    const-string/jumbo v3, "tw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string/jumbo v2, "zh-TW"

    goto :goto_0
.end method
