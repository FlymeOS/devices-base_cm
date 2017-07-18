.class Landroid/telecom/Call$7;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$remainingPostDialSequence:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Call;
    .param p2, "val$callback"    # Landroid/telecom/Call$Callback;
    .param p3, "val$call"    # Landroid/telecom/Call;
    .param p4, "val$remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 1362
    iput-object p1, p0, Landroid/telecom/Call$7;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$7;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$7;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$7;->val$remainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/telecom/Call$7;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$7;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Landroid/telecom/Call$7;->val$remainingPostDialSequence:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call$Callback;->onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V

    .line 1364
    return-void
.end method
