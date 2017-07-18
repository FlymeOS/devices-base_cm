.class Landroid/telecom/RemoteConference$2;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConference;

.field final synthetic val$callback:Landroid/telecom/RemoteConference$Callback;

.field final synthetic val$conference:Landroid/telecom/RemoteConference;

.field final synthetic val$newState:I

.field final synthetic val$oldState:I


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConference;
    .param p2, "val$callback"    # Landroid/telecom/RemoteConference$Callback;
    .param p3, "val$conference"    # Landroid/telecom/RemoteConference;
    .param p4, "val$oldState"    # I
    .param p5, "val$newState"    # I

    .prologue
    .line 195
    iput-object p1, p0, Landroid/telecom/RemoteConference$2;->this$0:Landroid/telecom/RemoteConference;

    iput-object p2, p0, Landroid/telecom/RemoteConference$2;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConference$2;->val$conference:Landroid/telecom/RemoteConference;

    iput p4, p0, Landroid/telecom/RemoteConference$2;->val$oldState:I

    iput p5, p0, Landroid/telecom/RemoteConference$2;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Landroid/telecom/RemoteConference$2;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConference$2;->val$conference:Landroid/telecom/RemoteConference;

    iget v2, p0, Landroid/telecom/RemoteConference$2;->val$oldState:I

    iget v3, p0, Landroid/telecom/RemoteConference$2;->val$newState:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telecom/RemoteConference$Callback;->onStateChanged(Landroid/telecom/RemoteConference;II)V

    .line 197
    return-void
.end method
