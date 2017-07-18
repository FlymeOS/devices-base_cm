.class Lcom/android/server/fingerprint/FingerprintService$4$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$4;->onEnrollResult(JIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$4;

.field final synthetic val$deviceId:J

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I

.field final synthetic val$remaining:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$4;JIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$4;
    .param p2, "val$deviceId"    # J
    .param p4, "val$fingerId"    # I
    .param p5, "val$groupId"    # I
    .param p6, "val$remaining"    # I

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->val$fingerId:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->val$groupId:I

    iput p6, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->val$remaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->val$deviceId:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->val$fingerId:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->val$groupId:I

    iget v6, p0, Lcom/android/server/fingerprint/FingerprintService$4$1;->val$remaining:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->handleEnrollResult(JIII)V

    .line 827
    return-void
.end method
