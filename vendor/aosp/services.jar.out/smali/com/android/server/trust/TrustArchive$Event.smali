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

.field final flags:I

.field final managingTrust:Z

.field final message:Ljava/lang/String;

.field final type:I

.field final userId:I


# direct methods
.method private constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "agent"    # Landroid/content/ComponentName;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "duration"    # J
    .param p7, "flags"    # I
    .param p8, "managingTrust"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 60
    iput p2, p0, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    .line 61
    iput-object p3, p0, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    .line 63
    iput-object p4, p0, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    .line 64
    iput-wide p5, p0, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 65
    iput p7, p0, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    .line 66
    iput-boolean p8, p0, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    .line 58
    return-void
.end method

.method synthetic constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "agent"    # Landroid/content/ComponentName;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "duration"    # J
    .param p7, "flags"    # I
    .param p8, "managingTrust"    # Z

    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    return-void
.end method
