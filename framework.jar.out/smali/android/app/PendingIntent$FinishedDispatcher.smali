.class Landroid/app/PendingIntent$FinishedDispatcher;
.super Landroid/content/IIntentReceiver$Stub;
.source "PendingIntent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishedDispatcher"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private mResultCode:I

.field private mResultData:Ljava/lang/String;

.field private mResultExtras:Landroid/os/Bundle;

.field private final mWho:Landroid/app/PendingIntent$OnFinished;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 0
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "who"    # Landroid/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 202
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    .line 203
    iput-object p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    .line 204
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    .line 205
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "serialized"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 208
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    .line 209
    iput p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    .line 210
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    .line 211
    iput-object p4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    .line 212
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/app/PendingIntent$FinishedDispatcher;->run()V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 219
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    iget-object v1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    iget-object v4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v5}, Landroid/app/PendingIntent$OnFinished;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 221
    return-void
.end method
