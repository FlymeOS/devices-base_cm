.class public final Landroid/service/carrier/CarrierMessagingService$SendSmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendSmsResult"
.end annotation


# instance fields
.field private final mMessageRef:I

.field private final mSendStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "sendStatus"    # I
    .param p2, "messageRef"    # I

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mSendStatus:I

    .line 268
    iput p2, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mMessageRef:I

    .line 269
    return-void
.end method


# virtual methods
.method public getMessageRef()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mMessageRef:I

    return v0
.end method

.method public getSendStatus()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mSendStatus:I

    return v0
.end method
