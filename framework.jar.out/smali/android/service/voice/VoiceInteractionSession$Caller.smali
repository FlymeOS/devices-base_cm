.class public Landroid/service/voice/VoiceInteractionSession$Caller;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Caller"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uid"    # I

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Caller;->packageName:Ljava/lang/String;

    .line 268
    iput p2, p0, Landroid/service/voice/VoiceInteractionSession$Caller;->uid:I

    .line 269
    return-void
.end method
