.class public Lcyanogenmod/app/Profile$TriggerState;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriggerState"
.end annotation


# static fields
.field public static final DISABLED:I = 0x2

.field public static final ON_A2DP_CONNECT:I = 0x3

.field public static final ON_A2DP_DISCONNECT:I = 0x4

.field public static final ON_CONNECT:I = 0x0

.field public static final ON_DISCONNECT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
