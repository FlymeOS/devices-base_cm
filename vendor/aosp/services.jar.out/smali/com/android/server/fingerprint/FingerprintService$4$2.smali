.class Lcom/android/server/fingerprint/FingerprintService$4$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$4;->onAcquired(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$4;

.field final synthetic val$acquiredInfo:I

.field final synthetic val$deviceId:J


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$4;JI)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$4;
    .param p2, "val$deviceId"    # J
    .param p4, "val$acquiredInfo"    # I

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$4$2;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$4$2;->val$acquiredInfo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$4$2;->val$deviceId:J

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$4$2;->val$acquiredInfo:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleAcquired(JI)V

    .line 837
    return-void
.end method
