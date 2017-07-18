.class Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportPhysicalAddressValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 3
    .param p1, "params"    # [B

    .prologue
    const/4 v0, 0x0

    .line 320
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 321
    const/4 v0, 0x4

    return v0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-static {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap0(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidType(I)Z

    move-result v0

    :cond_1
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-wrap1(Z)I

    move-result v0

    return v0
.end method
