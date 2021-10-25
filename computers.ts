// Set up tags so that they can be clicked

function updateLinks() {
    for (const tag of getTags()) {
        if (!tag.classList.contains('clickable')) {
            tag.classList.add('clickable');
        }

        const content = tag.textContent.trim();
        const value = tagify(content);

        const aTag = document.createElement('a') as HTMLAnchorElement;
        aTag.textContent = content;

        if (tag.classList.contains('selected')) {
            aTag.href = '#';
        } else {
            aTag.href = `#${value}`;
        }

        for (const child of Array.from(tag.childNodes)) {
            child.remove();
        }

        tag.appendChild(aTag);
    }
}

// Read the fragment, if set, and hide exhibits that don't have a tag that matches

function updateFilter() {
    const targetTag = document.location.hash.replace('#', '');
    for (const exhibit of getExhibits()) {
        let matched = targetTag === '';
        for (const tag of getExhibitTags(exhibit)) {
            const value = tagify(tag.textContent);
            if (value === targetTag) {
                tag.classList.add('selected');
                matched = true;
            } else {
                tag.classList.remove('selected');
            }
        }
        if (matched) {
            exhibit.classList.remove('hidden');
        } else {
            exhibit.classList.add('hidden');
        }
    }
}

window.addEventListener('load', () => {
    updateFilter();
    updateLinks();
});

window.addEventListener('hashchange', () => {
    updateFilter();
    updateLinks();
}, false);

// ----------------
// Helper functions
// ----------------

function tagify(value: string): string {
    return value.toLowerCase().trim().replace(' ', '--');
}

function getTags(): HTMLDivElement[] {
    const tagDivs = [];
    const tags = document.getElementsByClassName('tag');
    for (const tag of Array.from(tags) as HTMLDivElement[]) {
        tagDivs.push(tag);
    }
    return tagDivs;
}

function getExhibits(): HTMLDivElement[] {
    const exDivs = [];
    const exhibits = document.getElementsByClassName('exhibit');
    for (const exhibit of Array.from(exhibits)) {
        exDivs.push(exhibit);
    }
    return exDivs;
}

function getExhibitTags(exhibit: HTMLDivElement): HTMLDivElement[] {
    const tagDivs = [];
    const tags = exhibit.getElementsByClassName('tag');
    for (const tag of Array.from(tags)) {
        tagDivs.push(tag);
    }
    return tagDivs;
}
