.class Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationInfo"
.end annotation


# instance fields
.field public final addressType:I

.field public final parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .locals 0
    .param p1, "validator"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    .param p2, "type"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    .line 59
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    .line 60
    return-void
.end method
