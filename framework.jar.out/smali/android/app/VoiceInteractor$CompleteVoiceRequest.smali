.class public Landroid/app/VoiceInteractor$CompleteVoiceRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteVoiceRequest"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mMessage:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 268
    iput-object p1, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mMessage:Ljava/lang/CharSequence;

    .line 269
    iput-object p2, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    .line 270
    return-void
.end method


# virtual methods
.method public onCompleteResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 273
    return-void
.end method

.method submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 2
    .param p1, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    return-object v0
.end method
