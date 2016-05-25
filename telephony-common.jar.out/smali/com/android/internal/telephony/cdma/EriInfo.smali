.class public final Lcom/android/internal/telephony/cdma/EriInfo;
.super Ljava/lang/Object;
.source "EriInfo.java"


# static fields
.field public static final ROAMING_ICON_MODE_FLASH:I = 0x1

.field public static final ROAMING_ICON_MODE_NORMAL:I = 0x0

.field public static final ROAMING_INDICATOR_FLASH:I = 0x2

.field public static final ROAMING_INDICATOR_OFF:I = 0x1

.field public static final ROAMING_INDICATOR_ON:I


# instance fields
.field public alertId:I

.field public callPromptId:I

.field public eriText:Ljava/lang/String;

.field public iconIndex:I

.field public iconMode:I

.field public roamingIndicator:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 0
    .param p1, "roamingIndicator"    # I
    .param p2, "iconIndex"    # I
    .param p3, "iconMode"    # I
    .param p4, "eriText"    # Ljava/lang/String;
    .param p5, "callPromptId"    # I
    .param p6, "alertId"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/internal/telephony/cdma/EriInfo;->roamingIndicator:I

    .line 39
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    .line 40
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    .line 41
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    .line 42
    iput p5, p0, Lcom/android/internal/telephony/cdma/EriInfo;->callPromptId:I

    .line 43
    iput p6, p0, Lcom/android/internal/telephony/cdma/EriInfo;->alertId:I

    .line 44
    return-void
.end method
