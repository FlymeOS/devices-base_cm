.class final Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttributeMatchCriterion"
.end annotation


# instance fields
.field mAttr:Landroid/media/AudioAttributes;

.field mRule:I


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .locals 0
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 59
    iput p2, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    .line 60
    return-void
.end method
