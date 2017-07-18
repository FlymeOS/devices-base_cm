.class public Lcom/android/server/am/Ams_Utils;
.super Ljava/lang/Object;
.source "Ams_Utils.java"


# static fields
.field public static final BACKUP_APP_ADJ:I = 0x3

.field public static final CACHED_APP_MAX_ADJ:I = 0xf

.field public static final CACHED_APP_MIN_ADJ:I = 0x9

.field public static final FOREGROUND_APP_ADJ:I = 0x0

.field public static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field public static final HOME_APP_ADJ:I = 0x6

.field public static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field public static final PERSISTENT_PROC_ADJ:I = -0xc

.field public static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field public static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final SERVICE_ADJ:I = 0x5

.field public static final SERVICE_B_ADJ:I = 0x8

.field public static final SYSTEM_ADJ:I = -0x10

.field private static final TAG:Ljava/lang/String; = "AmsHelpler"

.field public static final UNKNOWN_ADJ:I = 0x10

.field public static final VISIBLE_APP_ADJ:I = 0x1

.field private static sApplicationInfo_mCloneId:Ljava/lang/reflect/Field;

.field private static sHasCloneFeature:Z

.field private static sProcessRecord_mCloneId:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 26
    sput-object v2, Lcom/android/server/am/Ams_Utils;->sApplicationInfo_mCloneId:Ljava/lang/reflect/Field;

    .line 27
    sput-object v2, Lcom/android/server/am/Ams_Utils;->sProcessRecord_mCloneId:Ljava/lang/reflect/Field;

    .line 28
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/am/Ams_Utils;->sHasCloneFeature:Z

    .line 32
    :try_start_0
    const-string/jumbo v2, "android.content.pm.ApplicationInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mCloneID"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/Ams_Utils;->sApplicationInfo_mCloneId:Ljava/lang/reflect/Field;

    .line 33
    const-string/jumbo v2, "com.android.server.am.ProcessRecord"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mCloneID"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/Ams_Utils;->sProcessRecord_mCloneId:Ljava/lang/reflect/Field;

    .line 34
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/Ams_Utils;->sHasCloneFeature:Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 36
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloneId(Ljava/lang/Object;)I
    .locals 3
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 45
    sget-boolean v2, Lcom/android/server/am/Ams_Utils;->sHasCloneFeature:Z

    if-eqz v2, :cond_1

    .line 47
    :try_start_0
    instance-of v2, p0, Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 48
    sget-object v2, Lcom/android/server/am/Ams_Utils;->sApplicationInfo_mCloneId:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 50
    :cond_0
    sget-object v2, Lcom/android/server/am/Ams_Utils;->sProcessRecord_mCloneId:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 58
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 52
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasAppCloneFeature()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/server/am/Ams_Utils;->sHasCloneFeature:Z

    return v0
.end method
