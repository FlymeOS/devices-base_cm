.class Lcom/android/server/trust/TrustArchive$Event;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation


# instance fields
.field final agent:Landroid/content/ComponentName;

.field final duration:J

.field final elapsedTimestamp:J

.field final managingTrust:Z

.field final message:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final userInitiated:Z


# direct methods
.method private constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "agent"    # Landroid/content/ComponentName;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "duration"    # J
    .param p7, "userInitiated"    # Z
    .param p8, "managingTrust"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 59
    iput p2, p0, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    .line 60
    iput-object p3, p0, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    .line 62
    iput-object p4, p0, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    .line 63
    iput-wide p5, p0, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 64
    iput-boolean p7, p0, Lcom/android/server/trust/TrustArchive$Event;->userInitiated:Z

    .line 65
    iput-boolean p8, p0, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    .line 66
    return-void
.end method

.method synthetic constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/ComponentName;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # J
    .param p7, "x5"    # Z
    .param p8, "x6"    # Z
    .param p9, "x7"    # Lcom/android/server/trust/TrustArchive$1;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p8}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZ)V

    return-void
.end method
