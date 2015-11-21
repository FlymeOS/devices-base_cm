.class public Lcom/android/internal/util/cm/PowerMenuConstants;
.super Ljava/lang/Object;
.source "PowerMenuConstants.java"


# static fields
.field private static ALL_ACTIONS:[Ljava/lang/String; = null

.field public static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field public static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field public static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field public static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field public static final GLOBAL_ACTION_KEY_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field public static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field public static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "power"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reboot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "screenshot"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "airplane"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "users"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "settings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockdown"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bugreport"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "silent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/util/cm/PowerMenuConstants;->ALL_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/internal/util/cm/PowerMenuConstants;->ALL_ACTIONS:[Ljava/lang/String;

    return-object v0
.end method
