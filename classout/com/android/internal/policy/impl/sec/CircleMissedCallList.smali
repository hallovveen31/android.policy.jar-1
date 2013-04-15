.class public Lcom/android/internal/policy/impl/sec/CircleMissedCallList;
.super Landroid/widget/FrameLayout;
.source "CircleMissedCallList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleMissedCallList"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final MAX_LIST_NUM:I

.field private final REQ_INDEX_CALL_EMAIL:I

.field mBottomText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mGuideLineColor:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/CircleMissedEventData;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field private mMissedCount:I

.field private mOrientation:I

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field private mStatusBarHeight:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockAcquired:Z

.field private m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->DEBUG:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->MAX_LIST_NUM:I

    .line 77
    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->CALL_PKG:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->REQ_INDEX_CALL_EMAIL:I

    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mContext:Landroid/content/Context;

    .line 83
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mOrientation:I

    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->init()V

    .line 85
    return-void
.end method

.method private handleMissedCallUpdate()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    .line 231
    return-void
.end method

.method private init()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 88
    const-string v2, "CircleMissedCallList"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b5

    .line 92
    const v2, 0x1090061

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    :goto_1a
    const v2, 0x1020314

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    .line 98
    const v2, 0x1020315

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mBottomText:Landroid/widget/TextView;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mList:Ljava/util/ArrayList;

    .line 101
    new-instance v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    .line 102
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080451

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingWidth:I

    .line 106
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingHeight:I

    .line 107
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingHeight:I

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    const v2, -0x887c72

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mGuideLineColor:I

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 114
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mGuideLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 118
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mStatusBarHeight:I

    .line 123
    :goto_9d
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 124
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CircleMissedCallList"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->updateMissedEvent()V

    .line 127
    return-void

    .line 94
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_b5
    const v2, 0x1090062

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1a

    .line 120
    :cond_bd
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mStatusBarHeight:I

    goto :goto_9d
.end method

.method private setGuideLineStartPos()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 212
    .local v0, pos:[I
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mMissedCount:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_2b

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 214
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineStartX:I

    .line 215
    aget v1, v0, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineStartY:I

    .line 222
    :goto_2a
    return-void

    .line 217
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 218
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineStartX:I

    .line 219
    aget v1, v0, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineStartY:I

    goto :goto_2a
.end method

.method private setGuildeLineEndPos(II)V
    .registers 4
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 225
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineEndX:I

    .line 226
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mStatusBarHeight:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineEndY:I

    .line 227
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineEndX:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineEndY:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 206
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->setGuideLineStartPos()V

    .line 207
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineStartY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLineEndY:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mRingWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 177
    .local v0, action:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_19

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->setGuildeLineEndPos(II)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->invalidate()V

    .line 194
    :cond_18
    :goto_18
    return-void

    .line 180
    :cond_19
    const/16 v1, 0x9

    if-ne v0, v1, :cond_38

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_31

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLockAcquired:Z

    .line 185
    :cond_31
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->setVisibility(I)V

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->setBackgroundColor(I)V

    goto :goto_18

    .line 187
    :cond_38
    const/16 v1, 0xa

    if-ne v0, v1, :cond_18

    .line 188
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLockAcquired:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4b

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 190
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mWakeLockAcquired:Z

    .line 192
    :cond_4b
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->setVisibility(I)V

    goto :goto_18
.end method

.method public updateMissedCall()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 130
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    move-result-object v1

    .line 132
    .local v1, dbAdapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 133
    const-string v8, "CircleMissedCallList"

    const-string v9, "updateMissedCall : DB is opend"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_14
    return-void

    .line 137
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    .line 138
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getMissedCallCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 140
    .local v0, cursor:Landroid/database/Cursor;
    const-string v8, "CircleMissedCallList"

    const-string v9, "updateMissedCall"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, i:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mMissedCount:I

    .line 145
    .local v3, max_count:I
    const/4 v8, 0x4

    if-le v3, v8, :cond_61

    .line 146
    add-int/lit8 v5, v3, -0x4

    .line 147
    .local v5, number:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mBottomText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mContext:Landroid/content/Context;

    const v10, 0x1040748

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    const/4 v3, 0x4

    .line 154
    .end local v5           #number:I
    :goto_4d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v8

    if-eqz v8, :cond_55

    .line 156
    :cond_53
    if-lt v2, v3, :cond_69

    .line 169
    :cond_55
    :goto_55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 170
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->close()V

    .line 172
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    goto :goto_14

    .line 151
    :cond_61
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mBottomText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4d

    .line 159
    :cond_69
    const-string v8, "name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, name:Ljava/lang/String;
    const-string v8, "time"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 162
    .local v6, time:J
    const-string v8, "CircleMissedCallList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMissedCall : name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mList:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    invoke-direct {v9, v4, v6, v7}, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v8

    if-nez v8, :cond_53

    goto :goto_55
.end method

.method public updateMissedEvent()V
    .registers 5

    .prologue
    .line 234
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 235
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_14

    .line 236
    const-string v2, "CircleMissedCallList"

    const-string v3, "onMissedEventUpdate : mNM is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_13
    return-void

    .line 239
    :cond_14
    const-string v2, "com.android.phone"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    .line 240
    .local v1, missedCallNotiInfo:Landroid/app/NotificationInfo;
    if-nez v1, :cond_25

    .line 241
    const-string v2, "CircleMissedCallList"

    const-string v3, "onMissedEventUpdate : missedCallNotiInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 245
    :cond_25
    iget v2, v1, Landroid/app/NotificationInfo;->missedCount:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->mMissedCount:I

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->updateMissedCall()V

    goto :goto_13
.end method
