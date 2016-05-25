.class public final Landroid/hardware/hdmi/HdmiRecordSources$DvbData;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DvbData"
.end annotation


# instance fields
.field private final mOriginalNetworkId:I

.field private final mServiceId:I

.field private final mTransportStreamId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "transportStreamId"    # I
    .param p2, "serviceId"    # I
    .param p3, "originalNetworkId"    # I

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mTransportStreamId:I

    .line 256
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mServiceId:I

    .line 257
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mOriginalNetworkId:I

    .line 258
    return-void
.end method


# virtual methods
.method public toByteArray([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 262
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mTransportStreamId:I

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mServiceId:I

    iget v2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mOriginalNetworkId:I

    # invokes: Landroid/hardware/hdmi/HdmiRecordSources;->threeFieldsToSixBytes(III[BI)I
    invoke-static {v0, v1, v2, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->access$100(III[BI)I

    move-result v0

    return v0
.end method
