.class Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;
.super Ljava/lang/Object;
.source "MzRadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimModeChangeRunnable"
.end annotation


# instance fields
.field mRetryMode:I

.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/meizu/MzRadioManager;I)V
    .locals 0
    .param p2, "mode"    # I

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;->mRetryMode:I

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    iget v1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;->mRetryMode:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/meizu/MzRadioManager;->notifyMSimModeChange(I)V

    .line 115
    return-void
.end method
