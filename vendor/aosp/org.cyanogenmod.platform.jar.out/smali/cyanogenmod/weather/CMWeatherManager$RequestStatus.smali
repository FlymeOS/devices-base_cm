.class public final Lcyanogenmod/weather/CMWeatherManager$RequestStatus;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/CMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestStatus"
.end annotation


# static fields
.field public static final ALREADY_IN_PROGRESS:I = -0x3

.field public static final COMPLETED:I = 0x1

.field public static final FAILED:I = -0x1

.field public static final NO_MATCH_FOUND:I = -0x4

.field public static final SUBMITTED_TOO_SOON:I = -0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
