.class final enum Lcom/android/server/gesture/EdgeGestureInputFilter$State;
.super Ljava/lang/Enum;
.source "EdgeGestureInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gesture/EdgeGestureInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/gesture/EdgeGestureInputFilter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/gesture/EdgeGestureInputFilter$State;

.field public static final enum DETECTING:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

.field public static final enum DROP:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

.field public static final enum LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

.field public static final enum LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

.field public static final enum POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

.field public static final enum SYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    const-string v1, "LISTEN"

    invoke-direct {v0, v1, v3}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    const-string v1, "DETECTING"

    invoke-direct {v0, v1, v4}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DETECTING:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v5}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    const-string v1, "SYNTHESIZE"

    invoke-direct {v0, v1, v6}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->SYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    const-string v1, "POSTSYNTHESIZE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    const-string v1, "DROP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DROP:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 158
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DETECTING:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->SYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DROP:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->$VALUES:[Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->$VALUES:[Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v0}, [Lcom/android/server/gesture/EdgeGestureInputFilter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    return-object v0
.end method
