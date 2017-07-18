.class final Lcyanogenmod/providers/CMSettings$InclusiveFloatRangeValidator;
.super Ljava/lang/Object;
.source "CMSettings.java"

# interfaces
.implements Lcyanogenmod/providers/CMSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveFloatRangeValidator"
.end annotation


# instance fields
.field private final mMax:F

.field private final mMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput p1, p0, Lcyanogenmod/providers/CMSettings$InclusiveFloatRangeValidator;->mMin:F

    .line 374
    iput p2, p0, Lcyanogenmod/providers/CMSettings$InclusiveFloatRangeValidator;->mMax:F

    .line 372
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 380
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 381
    .local v1, "floatValue":F
    iget v3, p0, Lcyanogenmod/providers/CMSettings$InclusiveFloatRangeValidator;->mMin:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcyanogenmod/providers/CMSettings$InclusiveFloatRangeValidator;->mMax:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 382
    .end local v1    # "floatValue":F
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method
