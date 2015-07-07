.class public Landroid/media/audiopolicy/AudioMixingRule;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMixingRule$1;,
        Landroid/media/audiopolicy/AudioMixingRule$Builder;,
        Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    }
.end annotation


# static fields
.field public static final RULE_EXCLUDE_ATTRIBUTE_USAGE:I = 0x2

.field public static final RULE_MATCH_ATTRIBUTE_USAGE:I = 0x1


# instance fields
.field private mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/ArrayList;
    .param p2, "x1"    # Landroid/media/audiopolicy/AudioMixingRule$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method getCriteria()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    return-object v0
.end method
