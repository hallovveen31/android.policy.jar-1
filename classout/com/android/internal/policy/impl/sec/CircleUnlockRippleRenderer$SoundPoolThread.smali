.class Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
.super Ljava/lang/Thread;
.source "CircleUnlockRippleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolThread"
.end annotation


# instance fields
.field private streamID:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;I)V
    .registers 3
    .parameter
    .parameter "tStreamID"

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1174
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->streamID:I

    .line 1175
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1180
    const/high16 v2, 0x3f80

    .line 1181
    .local v2, leftVolume:F
    const/high16 v3, 0x3f80

    .line 1182
    .local v3, rightVolume:F
    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 1184
    .local v0, decreaseUnit:F
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$300(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1211
    :cond_17
    return-void

    .line 1187
    :cond_18
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$400(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 1190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I

    move-result v4

    if-ge v1, v4, :cond_17

    .line 1192
    const/high16 v4, 0x3fc0

    mul-float/2addr v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_52

    .line 1194
    const/4 v2, 0x0

    .line 1195
    const/4 v3, 0x0

    .line 1204
    :goto_32
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$400(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 1207
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$400(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->streamID:I

    invoke-virtual {v4, v5, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 1208
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$500(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1190
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1199
    :cond_52
    sub-float/2addr v2, v0

    .line 1200
    sub-float/2addr v3, v0

    goto :goto_32
.end method
