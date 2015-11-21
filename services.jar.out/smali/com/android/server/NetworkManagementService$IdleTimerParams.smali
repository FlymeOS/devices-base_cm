.class Lcom/android/server/NetworkManagementService$IdleTimerParams;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleTimerParams"
.end annotation


# instance fields
.field public networkCount:I

.field public final timeout:I

.field public final type:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "type"    # I

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    .line 213
    iput p2, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 214
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 215
    return-void
.end method
